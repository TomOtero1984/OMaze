open Omaze.Ir
open Omaze.Parser
(* open Omaze.Graph *)
open Omaze.Cmake_gen

let () =
  let args = Sys.argv in
  let files =
    if Array.length args > 1 then Array.to_list (Array.sub args 1 (Array.length args - 1))
    else ["test/sample_build"]
  in
  let graph = create_graph () in
  List.iter (fun file ->
    let targets = parse_build_file file in
    List.iter (fun t -> Hashtbl.add graph t.name t) targets
  ) files;
  let cm = generate_cmake_for_graph graph in
  print_endline cm
