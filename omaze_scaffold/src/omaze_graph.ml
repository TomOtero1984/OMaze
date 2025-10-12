open Omaze_ir

(* Simple DFS-based topological sort. External deps (missing targets) are ignored. *)
let topo_sort (graph : build_graph) : target list =
  let visited = Hashtbl.create 256 in
  let temp = Hashtbl.create 256 in
  let result = ref [] in
  let rec visit name =
    if Hashtbl.mem temp name then
      (* cycle detected; ignore for now — caller can detect/handle if needed *)
      ()
    else if not (Hashtbl.mem visited name) then begin
      Hashtbl.add temp name ();
      Hashtbl.replace visited name ();
      match Hashtbl.find_opt graph name with
      | Some t ->
        List.iter visit t.deps;
        result := t :: !result
      | None -> ()
    end
  in
  Hashtbl.iter (fun name _ -> visit name) graph;
  List.rev !result
