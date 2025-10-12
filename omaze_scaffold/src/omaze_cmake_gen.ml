open Omaze_ir

let sanitize_name s =
  String.map (fun c -> if c = ':' || c = '/' || c = '-' then '_' else c) s

let cmake_target_name name = sanitize_name name

let generate_cmake t =
  let kind = match t.kind with
    | Binary -> "add_executable"
    | Library -> "add_library"
    | Test -> "add_executable"
  in
  let srcs = String.concat " " t.srcs in
  let hdrs = String.concat " " t.hdrs in
  let tgt = cmake_target_name t.name in
  let base =
    if srcs = "" then
      Printf.sprintf "# %s has no sources listed\n" tgt
    else
      Printf.sprintf "%s(%s %s)\n" kind tgt srcs
  in
  let headers_line =
    if hdrs = "" then "" else Printf.sprintf "target_sources(%s PRIVATE %s)\n" tgt hdrs
  in
  let deps =
    t.deps
    |> List.map cmake_target_name
    |> String.concat " "
  in
  let link_line = if deps = "" then "" else Printf.sprintf "target_link_libraries(%s %s)\n" tgt deps in
  base ^ headers_line ^ link_line

let generate_cmake_for_graph graph =
  let ordered = Omaze_graph.topo_sort graph in
  let header = "cmake_minimum_required(VERSION 3.15)\nproject(OMaze_Converted)\n\n" in
  let body = List.map generate_cmake ordered |> String.concat "\n" in
  header ^ body
