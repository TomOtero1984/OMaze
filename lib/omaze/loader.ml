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

  {
    label;
    name;
    kind;
    srcs = get_string_list "srcs";
    hdrs = get_string_list "hdrs";
    deps  = get_string_list "deps";
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
             (* extract the label for parse_target *)
             let label_opt =
               match json |> member "rule" |> member "name" |> to_string_option with
               | Some lbl when lbl <> "" -> Some lbl
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
