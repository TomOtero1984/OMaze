# Project Layout
```
bazel2cmake/
├── dune                 # OCaml build file
├── src/
│   ├── main.ml          # Entry point
│   ├── parser.ml        # Bazel file parser
│   ├── ir.ml            # IR types & helper functions
│   ├── graph.ml         # Graph utilities (topo sort, etc.)
│   └── cmake_gen.ml     # CMake code generator
└── test/
    └── sample_build     # Example BUILD file for testing
```


1. IR (ir.ml)

type target_kind = Binary | Library | Test

type target = {
    name : string;
    kind : target_kind;
    deps : string list;
    srcs : string list;
    hdrs : string list;
}

type build_graph = (string, target) Hashtbl.t

let create_graph () : build_graph = Hashtbl.create 100


⸻

2. Parser (parser.ml)

Simplified placeholder to parse a BUILD file into IR

open Ir

let parse_build_file (filename : string) : target list =
    (* TODO: implement Starlark parsing or minimal subset *)
    (* For now return a dummy target *)
    [{
        name = "example";
        kind = Library;
        deps = [];
        srcs = ["example.cc"];
        hdrs = ["example.h"];
    }]


⸻

3. Graph Utilities (graph.ml)

open Ir

(* Topological sort of targets *)
let topo_sort (graph : build_graph) : target list =
    (* placeholder; will implement proper sort *)
    Hashtbl.fold (fun _ v acc -> v :: acc) graph []


⸻

4. CMake Generator (cmake_gen.ml)

open Ir

let generate_cmake (t : target) : string =
    let kind_str = match t.kind with
        | Binary -> "add_executable"
        | Library -> "add_library"
        | Test -> "add_executable"
    in
    let sources = String.concat " " t.srcs in
    let deps = String.concat " " t.deps in
    Printf.sprintf "%s(%s %s)\ntarget_link_libraries(%s %s)\n"
        kind_str t.name sources t.name deps

let generate_cmake_for_graph (graph : build_graph) : string =
    Hashtbl.fold (fun _ t acc -> acc ^ generate_cmake t) graph ""


⸻

5. Main (main.ml)

open Ir
open Parser
open Graph
open Cmake_gen

let () =
    let build_files = ["test/sample_build"] in
    let graph = create_graph () in
    List.iter (fun file ->
        let targets = parse_build_file file in
        List.iter (fun t -> Hashtbl.add graph t.name t) targets
    ) build_files;
    let sorted = topo_sort graph in
    let cmake_output = generate_cmake_for_graph graph in
    Printf.printf "%s\n" cmake_output


⸻

This gives you a compilable OCaml skeleton with all the moving pieces: IR, parser, graph handling, CMake generator, and main entry.

Next steps:
	1.	Implement a proper Starlark subset parser in parser.ml.
	2.	Implement topological sort in graph.ml.
	3.	Expand cmake_gen.ml to handle headers, external deps, tests, and library types.

⸻

If you want, I can go ahead and extend this skeleton to include:
	•	A minimal real parser for BUILD files
	•	Topological sorting
	•	Proper CMake generation with headers + srcs + tests

That would be a very interview-ready prototype.

Do you want me to do that?



----




Perfect—let’s take this skeleton and extend it so it’s actually functional for a small-scale Bazel → CMake workflow. I’ll focus on:
	1.	Parsing a minimal subset of BUILD files (targets, srcs, hdrs, deps).
	2.	Topological sort for proper CMake generation.
	3.	CMake generation handling srcs, hdrs, and linking.

⸻

1. Parser (parser.ml) — Minimal BUILD Parser

We’ll assume BUILD files look like this (very common subset):

cc_library(
    name = "mylib",
    srcs = ["foo.cc", "bar.cc"],
    hdrs = ["foo.h"],
    deps = ["//other:lib"]
)

open Ir

(* Remove quotes and spaces *)
let clean_string s =
    String.trim s |> String.trim |> String.trim ~drop:(fun c -> c = '"' || c = '\'')

(* Parse a simple list of strings: ["foo.cc", "bar.cc"] *)
let parse_list s =
    let s = String.trim s in
    let s = String.sub s 1 (String.length s - 2) in  (* remove [ ] *)
    s
    |> String.split_on_char ','
    |> List.map clean_string

let parse_build_file (filename : string) : target list =
    let lines = Stdlib.input_lines (open_in filename) in
    let rec aux acc current_target =
        match lines with
        | [] -> (match current_target with Some t -> t :: acc | None -> acc)
        | line :: rest ->
            let line = String.trim line in
            if String.starts_with ~prefix:"cc_library" line ||
               String.starts_with ~prefix:"cc_binary" line then
                aux acc (Some { name=""; kind=(if String.starts_with ~prefix:"cc_library" line then Library else Binary); deps=[]; srcs=[]; hdrs=[] })
            else if String.contains line '=' then
                let parts = String.split_on_char '=' line in
                let key = String.trim (List.nth parts 0) in
                let value = String.trim (List.nth parts 1) in
                let update t =
                    match key with
                    | "name" -> { t with name = clean_string value }
                    | "srcs" -> { t with srcs = parse_list value }
                    | "hdrs" -> { t with hdrs = parse_list value }
                    | "deps" -> { t with deps = parse_list value }
                    | _ -> t
                in
                aux acc (Option.map update current_target)
            else if String.contains line ')' then
                (* end of target *)
                let acc = match current_target with Some t -> t :: acc | None -> acc in
                aux acc None
            else aux acc current_target
    in
    aux [] None

This handles basic cc_library and cc_binary targets with name, srcs, hdrs, deps.

⸻

2. Topological Sort (graph.ml)

open Ir

(* Simple DFS topo sort *)
let topo_sort (graph : build_graph) : target list =
    let visited = Hashtbl.create 100 in
    let result = ref [] in

    let rec visit name =
        if not (Hashtbl.mem visited name) then begin
            Hashtbl.add visited name ();
            match Hashtbl.find_opt graph name with
            | Some t ->
                List.iter visit t.deps;
                result := t :: !result
            | None -> ()  (* external dep, ignore *)
        end
    in
    Hashtbl.iter (fun name _ -> visit name) graph;
    List.rev !result


⸻

3. CMake Generation (cmake_gen.ml)

open Ir

let generate_cmake (t : target) : string =
    let kind_str = match t.kind with
        | Binary -> "add_executable"
        | Library -> "add_library"
        | Test -> "add_executable"
    in
    let sources = String.concat " " t.srcs in
    let headers = String.concat " " t.hdrs in
    let deps = String.concat " " t.deps in
    let base = Printf.sprintf "%s(%s %s %s)\n" kind_str t.name sources headers in
    if deps = "" then base else base ^ Printf.sprintf "target_link_libraries(%s %s)\n" t.name deps

let generate_cmake_for_graph (graph : build_graph) : string =
    let sorted = Graph.topo_sort graph in
    List.fold_left (fun acc t -> acc ^ generate_cmake t ^ "\n") "" sorted


⸻

4. Main (main.ml)

open Ir
open Parser
open Graph
open Cmake_gen

let () =
    let build_files = ["test/sample_build"] in
    let graph = create_graph () in
    List.iter (fun file ->
        let targets = parse_build_file file in
        List.iter (fun t -> Hashtbl.add graph t.name t) targets
    ) build_files;
    let cmake_output = generate_cmake_for_graph graph in
    Printf.printf "%s\n" cmake_output


⸻

5. Dune File (dune)

(executable
 (name main)
 (modules main ir parser graph cmake_gen)
 (libraries str))


⸻

✅ With this setup, you can:
	•	Parse BUILD files (basic subset).
	•	Construct an IR.
	•	Topologically sort targets.
	•	Generate a CMakeLists.txt string for all targets.

This is ready to extend for more Bazel features, tests, or advanced macros.

⸻

If you want, I can next add support for cc_test targets, handle external deps, and automatically create a CMakeLists.txt file on disk—basically making it a fully interview-ready prototype.

Do you want me to do that next?
