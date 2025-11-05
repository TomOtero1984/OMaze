open Yojson.Basic.Util
open Ir
(* open Printf *)

(* ======================
   Helpers
   ====================== *)

let kind_of_string = function
  | "cc_library" -> CC_Library
  | "cc_binary"  -> CC_Binary
  | "cc_test"    -> CC_Test
  | other -> Other other

(* derive package path from label like "//runtime/core:engine" -> "runtime/core" *)
let package_of_label label =
  match String.index_opt label ':' with
  | Some idx ->
      let prefix = String.sub label 0 idx in
      if String.length prefix >= 2 && String.sub prefix 0 2 = "//" then
        String.sub prefix 2 (String.length prefix - 2)
      else if String.contains prefix '/' then
        (* may be @repo//pkg/... *)
        let pos = String.index prefix '/' in
        if pos + 2 < String.length prefix && String.sub prefix (pos+2) 2 = "//" then
          String.sub prefix (pos+3) (String.length prefix - (pos+3))
        else prefix
      else prefix
  | None -> "."  (* fallback *)

(* convert a bazel-style label to a relative file path if possible:
   Examples:
     //pkg/path:foo.cc  -> pkg/path/foo.cc
     :foo.cc            -> foo.cc
     @repo//pkg:foo.cc  -> pkg/foo.cc
     plain/path/foo.cc  -> plain/path/foo.cc (unchanged)
*)
let label_to_path s =
  (* if it contains a ':' treat the part after ':' as the filename *)
  match String.index_opt s ':' with
  | Some i ->
      let prefix = String.sub s 0 i in
      let name = String.sub s (i+1) (String.length s - i - 1) in
      if String.length prefix >= 2 && String.sub prefix 0 2 = "//" then
        (* //pkg/path -> pkg/path *)
        let pkg = String.sub prefix 2 (String.length prefix - 2) in
        Filename.concat pkg name
      else if String.length prefix > 0 && prefix.[0] = '@' then
        (* @repo//pkg/path -> find the // and drop repo *)
        (match String.index_opt prefix '/' with
         | Some pos ->
             (* look for // after repo *)
             (match String.index_from_opt prefix (pos+1) '/' with
              | Some _ -> (* there is another /; fallback to name only *) name
              | None -> name)
         | None -> name)
      else
        (* :name or other -> use the name directly *)
        name
  | None -> s

let list_of_opt_strings json_field =
  match json_field with
  | `Null -> []
  | `List l -> List.filter_map (function `String s -> Some s | _ -> None) l
  | `String s -> [s]
  | _ -> []

let parse_target ~label json =
  let rule = json |> member "rule" in
  let kind =
    match rule |> member "ruleClass" |> to_string_option with
    | Some s -> kind_of_string s
    | None -> Other ""
  in
  let name =
    match rule |> member "name" |> to_string_option with
    | Some s -> s
    | None ->
        (match String.rindex_opt label ':' with
         | Some i -> String.sub label (i+1) (String.length label - (i+1))
         | None -> label)
  in
  let attributes = rule |> member "attribute" |> to_list in

  let get_string_list attr_name =
    attributes
    |> List.filter_map (fun attr ->
         match attr |> member "name" |> to_string_option with
         | Some n when n = attr_name ->
             (match attr |> member "stringListValue" with
              | `List l -> Some (List.filter_map (function `String s -> Some s | _ -> None) l)
              | _ -> Some [])
         | _ -> None)
    |> List.flatten
  in

  let map_paths l = List.map label_to_path l in
  {
    label;
    name;
    kind;
    srcs = map_paths (get_string_list "srcs");
    hdrs = map_paths (get_string_list "hdrs");
    deps  = get_string_list "deps"; (* deps are fine to keep as labels for now; cmake_gen sanitizes them *)
    package = package_of_label label;
  }

(* ======================
   Load streamed JSONL
   ====================== *)
   let load_from_file path : project =
     let ic = open_in path in
     let rec loop acc =
       try
         let line = input_line ic |> String.trim in
         if line = "" then loop acc
         else
           (* try parsing each line as JSON, skip if it fails *)
           try
             let json = Yojson.Basic.from_string line in
             (* extract the label for parse_target: prefer top-level "label" field, fallback to rule.name *)
             let label_opt =
               match json |> member "label" |> to_string_option with
               | Some lbl when lbl <> "" -> Some lbl
               | _ ->
                   (* fallback to rule.name (older output may put label here) *)
                   match json |> member "rule" |> member "name" |> to_string_option with
                   | Some rn when rn <> "" -> Some rn
                   | _ -> None
             in
             match label_opt with
             | Some label ->
                 let target = parse_target ~label json in
                 loop (target :: acc)
             | None -> loop acc  (* skip lines with no label *)
           with Yojson.Json_error _ ->
             (* skip malformed JSON lines *)
             loop acc
       with End_of_file ->
         close_in ic;
         { targets = List.rev acc }
     in
     loop []


(* --- Remote dependency mapping support (optional) --- *)
module Remote_map = struct
  (* open Yojson.Basic *)

  let kind_of_string = function
    | "FetchContent" -> Ir.RK_FetchContent
    | "FindPackage"  -> Ir.RK_FindPackage
    | "ExternalProject" -> Ir.RK_ExternalProject
    | "HeaderOnly"   -> Ir.RK_HeaderOnly
    | s -> failwith ("Unknown remote dep kind: "^s)

  let assoc_opt key (alist : (string * Yojson.Basic.t) list) =
    match List.assoc_opt key alist with
    | None -> None
    | Some (`String s) -> Some s
    | _ -> None

  let assoc_str_list key (alist : (string * Yojson.Basic.t) list) =
    match List.assoc_opt key alist with
    | Some (`List xs) -> xs |> List.filter_map (function `String s -> Some s | _ -> None)
    | _ -> []

  let assoc_kv_list key (alist : (string * Yojson.Basic.t) list) =
    match List.assoc_opt key alist with
    | Some (`Assoc kvs) -> kvs |> List.filter_map (function (k, `String v) -> Some (k, v) | _ -> None)
    | _ -> []

  let repo_of_label (label : string) =
    if String.length label > 0 && label.[0] = '@' then
      match String.index_opt label '/' with
      | Some i -> String.sub label 0 i
      | None -> label
    else
      ""
end

let register_remote_deps_from_json ~(path : string) ~(proj : Ir.project) =
  if Sys.file_exists path then begin
    let json = Yojson.Basic.from_file path in
    match json with
    | `Assoc top ->
        let by_repo =
          match List.assoc_opt "by_repo" top with Some (`Assoc m) -> m | _ -> []
        in
        let by_label =
          match List.assoc_opt "by_label" top with Some (`Assoc m) -> m | _ -> []
        in
        List.iter (fun (t : Ir.target) ->
          let rd_list =
            t.deps
            |> List.filter_map (fun dep_label ->
                 let entry_opt =
                   match List.assoc_opt dep_label by_label with
                   | Some (`Assoc fields) -> Some fields
                   | _ ->
                      (match List.assoc_opt (Remote_map.repo_of_label dep_label) by_repo with
                       | Some (`Assoc fields) -> Some fields
                       | _ -> None)
                 in
                 match entry_opt with
                 | None -> None
                 | Some fields ->
                   let name = match List.assoc_opt "name" fields with
                     | Some (`String s) -> s | _ -> failwith "remote dep missing name"
                   in
                   let kind =
                     match List.assoc_opt "kind" fields with
                     | Some (`String s) -> Remote_map.kind_of_string s
                     | _ -> Ir.RK_FindPackage
                   in
                   let url = Remote_map.assoc_opt "url" fields in
                   let tag = Remote_map.assoc_opt "tag" fields in
                   let options = Remote_map.assoc_kv_list "options" fields in
                   let include_dirs = Remote_map.assoc_str_list "include_dirs" fields in
                   let libs = Remote_map.assoc_str_list "libs" fields in
                   let optional =
                     match List.assoc_opt "optional" fields with
                     | Some (`Bool b) -> b | _ -> false
                   in
                   let rd = {
                     Ir.rd_name = name; rd_kind = kind; rd_url = url; rd_tag = tag;
                     rd_options = options; rd_include_dirs = include_dirs;
                     rd_libs = libs; rd_optional = optional;
                   } in
                   Some rd
               )
          in
          if rd_list <> [] then Ir.add_remote_deps ~label:t.label rd_list
        ) proj.targets
    | _ -> ()
  end
