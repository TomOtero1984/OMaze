(* OMaze CLI: load Bazel graph JSON, optionally register remote deps, emit CMake scaffold. *)
open Omaze
open Printf

let usage () =
  eprintf "usage: omaze <bazel_graph.json> [remote_deps.json] <outdir>\n";
  eprintf "examples:\n";
  eprintf "  omaze full_bazel_graph.json output\n";
  eprintf "  omaze full_bazel_graph.json remote_deps.json output\n";
  exit 2

let () =
  let argc = Array.length Sys.argv in
  if argc < 3 then usage ();
  let graph_json, remote_json_opt, outdir =
    match argc with
    | 3 -> Sys.argv.(1), None, Sys.argv.(2)
    | 4 -> Sys.argv.(1), Some Sys.argv.(2), Sys.argv.(3)
    | _ -> usage ()
  in
  printf "Loading %s\n%!" graph_json;
  let proj = Loader.load_from_file graph_json in
  (match remote_json_opt with
   | Some path -> Loader.register_remote_deps_from_json ~path ~proj
   | None ->
      (match Sys.getenv_opt "OMAZE_REMOTE_DEPS" with
       | Some path when Sys.file_exists path -> Loader.register_remote_deps_from_json ~path ~proj
       | _ -> ()));
  printf "Loaded %d targets\n%!" (List.length proj.Ir.targets);
  Cmake_gen.write_scaffold ~outdir proj;
  printf "Wrote scaffold to %s\n%!" outdir
