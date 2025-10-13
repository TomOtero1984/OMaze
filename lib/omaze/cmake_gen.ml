open Ir
open Printf

let sanitize_target_name s =
  (* replace problematic characters in labels *)
  String.map (fun c -> if c = ':' || c = '/' || c = '@' || c = '-' then '_' else c) s

let cmake_for_target t =
  let tgt = sanitize_target_name t.label in
  let sources = String.concat " " (t.srcs) in
  let headers = String.concat " " t.hdrs in
  match t.kind with
  | CC_Library ->
      let src_list = if sources = "" then "" else sprintf "  %s\n" sources in
      sprintf "add_library(%s)\n%s%s" tgt src_list ""
      ^
      (if headers <> "" then sprintf "target_sources(%s PRIVATE %s)\n" tgt headers else "")
      ^
      (if t.deps <> [] then
         let deps = t.deps |> List.map sanitize_target_name |> String.concat " " in
         sprintf "target_link_libraries(%s %s)\n" tgt deps
       else "")
  | CC_Binary ->
      let srcs = if sources = "" then "" else sources in
      sprintf "add_executable(%s %s)\n" tgt srcs ^
      (if t.deps <> [] then
         let deps = t.deps |> List.map sanitize_target_name |> String.concat " " in
         sprintf "target_link_libraries(%s %s)\n" tgt deps
       else "")
  | CC_Test ->
      let srcs = String.concat " " t.srcs in
      sprintf "add_executable(%s %s)\nadd_test(NAME %s COMMAND %s)\n" tgt srcs tgt tgt
  | Other s ->
      (* emit comment for unknown rules *)
      sprintf "# Unsupported rule %s for %s\n" s t.label

(* Build a package-level CMakeLists.txt with add_subdirectory for each package folder *)
let write_scaffold ~outdir (proj : project) =
  let packages =
    proj.targets
    |> List.map (fun t -> t.package)
    |> List.sort_uniq String.compare
  in
  (* create outdir and package dirs *)
  if not (Sys.file_exists outdir) then Unix.mkdir outdir 0o755;
  List.iter (fun pkg ->
    let d = Filename.concat outdir pkg in
    let rec make_dir p =
      if p = "" || Sys.file_exists p then ()
      else begin
        make_dir (Filename.dirname p);
        Unix.mkdir p 0o755
      end
    in
    make_dir d
  ) packages;
  (* per-package file generation *)
  List.iter (fun pkg ->
    let targets_in_pkg =
      proj.targets |> List.filter (fun t -> t.package = pkg)
    in
    let cmake_path = Filename.concat outdir (Filename.concat pkg "CMakeLists.txt") in
    let oc = open_out cmake_path in
    Printf.fprintf oc "# Auto-generated CMake for package %s\n\n" pkg;
    List.iter (fun t ->
      Printf.fprintf oc "%s\n" (cmake_for_target t)
    ) targets_in_pkg;
    close_out oc
  ) packages;
  (* root CMakeLists.txt *)
  let root_cmake = Filename.concat outdir "CMakeLists.txt" in
  let roc = open_out root_cmake in
  Printf.fprintf roc "cmake_minimum_required(VERSION 3.15)\nproject(OMaze_Converted)\n\n";
  List.iter (fun pkg ->
    Printf.fprintf roc "add_subdirectory(%s)\n" pkg
  ) packages;
  close_out roc
