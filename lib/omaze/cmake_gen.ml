open Ir
(* open Printf *)
open Io_utils
(* open Fpath  *)



(* --- remote dep rendering helpers --- *)
let render_remote_deps_for_label ~tgt ~label =
  let rds = Ir.get_remote_deps label in
  let buf = Buffer.create 256 in
  List.iter (fun rd ->
    match rd.rd_kind with
    | Ir.RK_FetchContent | Ir.RK_FindPackage ->
        List.iter (fun lib ->
          Buffer.add_string buf (Printf.sprintf "target_link_libraries(%s PRIVATE %s)\n" tgt lib)
        ) rd.rd_libs
    | Ir.RK_HeaderOnly ->
        List.iter (fun inc ->
          Buffer.add_string buf (Printf.sprintf "target_include_directories(%s PRIVATE %s)\n" tgt inc)
        ) rd.rd_include_dirs
    | Ir.RK_ExternalProject ->
        Buffer.add_string buf (Printf.sprintf "# ExternalProject %s requires manual create of imported targets\n" rd.rd_name)
  ) rds;
  Buffer.contents buf

let collect_all_remote_deps (proj : Ir.project) =
  proj.targets
  |> List.map (fun t -> Ir.get_remote_deps t.label)
  |> List.flatten
  |> List.sort_uniq (fun a b -> String.compare a.rd_name b.rd_name)
(* --- sanitize bazel labels into valid CMake target names --- *)
let sanitize_target_name s =
  (* remove bazel workspace/repo prefixes *)
  let s =
    if String.length s >= 2 && String.sub s 0 2 = "//" then
      String.sub s 2 (String.length s - 2)
    else if String.length s > 0 && s.[0] = '@' then
      (match String.index_opt s '/' with
       | Some pos ->
           (match String.index_from_opt s (pos+1) '/' with
            | Some pos2 when pos2 + 1 < String.length s && s.[pos2+1] = '/' ->
                String.sub s (pos2+2) (String.length s - (pos2+2))
            | _ -> s)
       | None -> s)
    else if String.length s > 0 && s.[0] = ':' then
      String.sub s 1 (String.length s - 1)
    else s
  in

  (* replace invalid chars with underscores *)
  let buf = Buffer.create (String.length s) in
  let last_was_uscore = ref false in
  String.iter (fun c ->
      let ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') in
      if ok then begin
        Buffer.add_char buf c;
        last_was_uscore := false
      end else if c = ':' || c = '/' || c = '-' || c = '.' || c = '@' then begin
        if not !last_was_uscore then begin Buffer.add_char buf '_'; last_was_uscore := true end
      end else if c = '_' then (
        if not !last_was_uscore then ( Buffer.add_char buf '_'; last_was_uscore := true )
      ) else (
        if not !last_was_uscore then ( Buffer.add_char buf '_'; last_was_uscore := true )
      )
    ) s;
  let name = Buffer.contents buf in

  (* trim leading/trailing underscores *)
  let i = ref 0 in
  while !i < String.length name && name.[!i] = '_' do incr i done;
  let j = ref (String.length name - 1) in
  while !j >= 0 && name.[!j] = '_' do decr j done;
  if !i > !j then "unnamed" else String.sub name !i (!j - !i + 1)

(* let sanitize_src_path s =
  let s = String.trim s in
  let len = String.length s in
  let s =
    if len >= 2 && s.[0] = '"' && s.[len-1] = '"' then
      String.sub s 1 (len - 2)
    else s
  in
  (* Replace characters that Fpath considers invalid *)
  let buf = Buffer.create (String.length s) in
  String.iter (fun c ->
    match c with
    | '/' | '\\' | '.' | '-' | '_' | ' ' | ':' | '@'
    | 'a'..'z' | 'A'..'Z' | '0'..'9' -> Buffer.add_char buf c
    | _ -> ()  (* drop anything else *)
  ) s;
  Buffer.contents buf
;; *)

(* --- join a list of files into a CMake source block --- *)
let cmake_src_block files =
  if files = [] then "" else
    let body = files |> String.concat "\n    " in
    Printf.sprintf "  %s\n" body


(* --- normalize source path relative to CMakeLists or project root --- *)
(* let normalize_src_path ~cmakelists_dir ~project_root src =
  let src = sanitize_src_path src in
  let project_root_fp = Fpath.(v project_root |> normalize) in
  let cmake_dir_fp = Fpath.(v cmakelists_dir |> normalize) in

  (* make src absolute by prepending project root if not already absolute *)
  let src_fp =
    if Filename.is_relative src then Fpath.(project_root_fp / src |> normalize)
    else Fpath.(v src |> normalize)
  in

  (* try relative to cmakelists_dir first *)
  match Fpath.rem_prefix cmake_dir_fp src_fp with
  | Some rel -> Fpath.to_string rel
  | None ->
      (* fallback to project root relative *)
      (match Fpath.rem_prefix project_root_fp src_fp with
       | Some rel -> Fpath.to_string rel
       | None -> Fpath.to_string src_fp)
;; *)


(* --- make a path safe for Fpath.v, or fallback to raw string --- *)
let safe_fpath s =
  let s = String.trim s in
  let len = String.length s in
  let s =
    if len >= 2 && s.[0] = '"' && s.[len-1] = '"' then
      String.sub s 1 (len - 2)
    else s
  in
  try Fpath.v s
  with Invalid_argument _ -> Fpath.v (Filename.concat "" s)  (* trick Fpath with dummy concat *)
;;

let normalize_src_path ~cmakelists_dir ~project_root src =
  let project_root_fp = Fpath.(v project_root |> normalize) in
  let cmakelists_fp = Fpath.(v cmakelists_dir |> normalize) in

  (* Trim quotes and whitespace from Bazel label strings *)
  let src_str =
    let s = String.trim src in
    let len = String.length s in
    if len >= 2 && s.[0] = '"' && s.[len-1] = '"' then
      String.sub s 1 (len - 2)
    else s
  in

  (* Make absolute path *)
  let src_fp =
    let f = Fpath.v src_str in
    if Filename.is_relative src_str then
      Fpath.normalize (Fpath.append project_root_fp f)
    else
      Fpath.normalize f
  in

  (* Try relative to CMakeLists.txt first *)
  match Fpath.rem_prefix cmakelists_fp src_fp with
  | Some rel -> Fpath.to_string rel
  | None ->
      (* Fallback to project root relative *)
      (match Fpath.rem_prefix project_root_fp src_fp with
       | Some rel -> Fpath.to_string rel
       | None -> Fpath.to_string src_fp)
;;

(* --- detect compilable sources --- *)
let has_compilable_sources srcs =
  List.exists (fun f ->
      let l = String.length f in
      (l >= 2 && (Filename.check_suffix f ".c"  || Filename.check_suffix f ".S"))
      || (l >= 4 && (Filename.check_suffix f ".cpp" || Filename.check_suffix f ".cc" || Filename.check_suffix f ".cxx"))
    ) srcs

(* --- generate CMake for a target --- *)
let cmake_for_target ~cmakelists_dir ~project_root t =
  let tgt = sanitize_target_name t.label in
  let srcs = t.srcs |> List.map (normalize_src_path ~cmakelists_dir ~project_root) in
  let hdrs = t.hdrs |> List.map (normalize_src_path ~cmakelists_dir ~project_root) in
  let deps =
    match t.deps with
    | [] -> ""
    | ds -> ds |> List.map sanitize_target_name |> String.concat " "
  in

  match t.kind with
  | CC_Library ->
    if has_compilable_sources srcs then
        let src_block = cmake_src_block srcs in
        let buf = Buffer.create 256 in
        Buffer.add_string buf (Printf.sprintf "add_library(%s STATIC\n" tgt);
        Buffer.add_string buf src_block;
        Buffer.add_string buf ")\n";
        Buffer.add_string buf (Printf.sprintf "target_include_directories(%s PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})\n" tgt);
        if deps <> "" then
          Buffer.add_string buf (Printf.sprintf "target_link_libraries(%s PRIVATE %s)\n" tgt deps);
        Buffer.contents buf
      else if hdrs <> [] then
        let buf = Buffer.create 256 in
        Buffer.add_string buf (Printf.sprintf "add_library(%s INTERFACE)\n" tgt);
        Buffer.add_string buf (Printf.sprintf "target_include_directories(%s INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})\n" tgt);
        if deps <> "" then
          Buffer.add_string buf (Printf.sprintf "# NOTE: %s has deps but is INTERFACE; listing deps for clarity\n" tgt);
        Buffer.contents buf
      else
        Printf.sprintf "# Skipping library %s: no sources or headers\n" tgt

  | CC_Binary | CC_Test ->
      if srcs = [] then Printf.sprintf "# Skipping binary/test %s: no sources found\n" tgt
      else
        let src_block = cmake_src_block srcs in
        let buf = Buffer.create 256 in
        Buffer.add_string buf (Printf.sprintf "add_executable(%s\n" tgt);
        Buffer.add_string buf src_block;
        Buffer.add_string buf ")\n";
        (* attach remote deps linked libraries / include dirs (always) *)
        Buffer.add_string buf (render_remote_deps_for_label ~tgt ~label:t.label);
        if deps <> "" then
          Buffer.add_string buf (Printf.sprintf "target_link_libraries(%s PRIVATE %s)\n" tgt deps);
        if t.kind = CC_Test then
          Buffer.add_string buf (Printf.sprintf "add_test(NAME %s COMMAND %s)\n" tgt tgt);
        Buffer.contents buf

  | Other s ->
      if hdrs <> [] then
        let buf = Buffer.create 256 in
        Buffer.add_string buf (Printf.sprintf "# Bazel rule %s -> INTERFACE target %s\n" s tgt);
        Buffer.add_string buf (Printf.sprintf "add_library(%s INTERFACE)\n" tgt);
        Buffer.add_string buf (Printf.sprintf "target_include_directories(%s INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})\n" tgt);
        Buffer.contents buf
      else
        Printf.sprintf "# Unsupported rule %s for %s\n" s t.label

(* --- write all CMake scaffolds --- *)
let write_scaffold ~outdir (proj : project) =
  let packages =
    proj.targets |> List.map (fun t -> t.package) |> List.sort_uniq String.compare
  in

  ensure_dir outdir;

  List.iter (fun pkg ->
      let pkg_dir = Filename.concat outdir pkg in
      ensure_dir pkg_dir
    ) packages;

  List.iter (fun pkg ->
      let targets_in_pkg = proj.targets |> List.filter (fun t -> t.package = pkg) in
      let cmake_path = Filename.concat outdir (Filename.concat pkg "CMakeLists.txt") in
      let oc = open_out cmake_path in
      Printf.fprintf oc "# Auto-generated CMake for package %s\n" pkg;
      Printf.fprintf oc "# Generated by cmake_gen.ml\n\n";
      Printf.fprintf oc "set(PKG_ROOT ${CMAKE_CURRENT_SOURCE_DIR})\n\n";
      List.iter (fun t ->
          Printf.fprintf oc "%s\n"
            (cmake_for_target
               ~cmakelists_dir:(Filename.concat outdir pkg)
               ~project_root:outdir
               t)
        ) targets_in_pkg;
      close_out oc
    ) packages;

  (* root CMakeLists.txt *)
  let root_cmake = Filename.concat outdir "CMakeLists.txt" in
  let roc = open_out root_cmake in
  Printf.fprintf roc "cmake_minimum_required(VERSION 3.15)\n";
  Printf.fprintf roc "project(OMaze_Converted)\n\n";
  (* --- emit remote dependency bootstrap (FetchContent/find_package) --- *)
  let rdeps = collect_all_remote_deps proj in
  let remote_bootstrap_buf = Buffer.create 512 in
  if rdeps <> [] then Buffer.add_string remote_bootstrap_buf "include(FetchContent)\nset(FETCHCONTENT_BASE_DIR ${CMAKE_BINARY_DIR}/third_party)\n\n";
  List.iter (fun rd ->
    match rd.rd_kind with
    | Ir.RK_FetchContent ->
        (match rd.rd_url with
         | Some url ->
             Buffer.add_string remote_bootstrap_buf (Printf.sprintf "FetchContent_Declare(%s\n  GIT_REPOSITORY %s\n" rd.rd_name url);
             (match rd.rd_tag with Some tag -> Buffer.add_string remote_bootstrap_buf (Printf.sprintf "  GIT_TAG %s\n" tag) | None -> ());
             Buffer.add_string remote_bootstrap_buf ")\n";
             Buffer.add_string remote_bootstrap_buf (Printf.sprintf "FetchContent_MakeAvailable(%s)\n\n" rd.rd_name)
         | None ->
             Buffer.add_string remote_bootstrap_buf (Printf.sprintf "# FetchContent %s has no URL\n" rd.rd_name))
    | Ir.RK_FindPackage ->
        let version_opt = try List.assoc "VERSION" rd.rd_options with Not_found -> "" in
        let req = if rd.rd_optional then "" else " REQUIRED" in
        if version_opt = "" then
          Buffer.add_string remote_bootstrap_buf (Printf.sprintf "find_package(%s%s)\n" rd.rd_name req)
        else
          Buffer.add_string remote_bootstrap_buf (Printf.sprintf "find_package(%s %s%s)\n" rd.rd_name version_opt req)
    | Ir.RK_HeaderOnly ->
        Buffer.add_string remote_bootstrap_buf (Printf.sprintf "# header-only remote dep %s\n" rd.rd_name)
    | Ir.RK_ExternalProject ->
        Buffer.add_string remote_bootstrap_buf (Printf.sprintf "# ExternalProject %s requires manual handling\n" rd.rd_name)
  ) rdeps;
  let remote_bootstrap = Buffer.contents remote_bootstrap_buf in
  Printf.fprintf roc "%s\n" remote_bootstrap;

  Printf.fprintf roc "# Add package subdirectories\n";
  List.iter (fun pkg -> Printf.fprintf roc "add_subdirectory(%s)\n" pkg) packages;
  Printf.fprintf roc "\n# End of auto-generated root CMakeLists\n";
  close_out roc
