open Omaze_ir
open Omaze_parser
open Omaze_graph
open Omaze_cmake_gen

let () =
  let args = Sys.argv in
  let files =
    if Array.length args > 1 then Array.to_list (Array.sub args 1 (Array.length args - 1))
    else ["test/sample_build"]
  in
  let graph = Omaze_ir.create_graph () in
  List.iter (fun file ->
    let targets = Omaze_parser.parse_build_file file in
    List.iter (fun t -> Hashtbl.add graph t.name t) targets
  ) files;
  let cm = Omaze_cmake_gen.generate_cmake_for_graph graph in
  print_endline cm
