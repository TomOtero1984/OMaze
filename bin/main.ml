open Omaze.Ir
open Omaze.Loader
open Omaze.Cmake_gen
open Printf

let () =
  let argv = Sys.argv in
  if Array.length argv < 3 then begin
    eprintf "Usage: %s <bazel_query_json> <outdir>\n" argv.(0);
    exit 2
  end;
  let json_file = argv.(1) in
  let outdir = argv.(2) in
  printf "Loading %s\n%!" json_file;
  let proj = load_from_file json_file in
  printf "Loaded %d targets\n%!" (List.length proj.targets);
  write_scaffold ~outdir proj;
  printf "Wrote scaffold to %s\n%!" outdir
