open Ir

(* Very small, forgiving parser for a subset of Starlark used in BUILD files.
   Supports cc_library and cc_binary with name, srcs, hdrs, deps.
   This is intentionally simple for the prototype; extend as needed. *)

let trim_quotes s =
  let s = String.trim s in
  if String.length s >= 2 then
    let c1 = s.[0] and c2 = s.[String.length s - 1] in
    if (c1 = '"' && c2 = '"') || (c1 = '\'' && c2 = '\'') then
      String.sub s 1 (String.length s - 2)
    else s
  else s

let split_list_literal s =
  let s = String.trim s in
  if s = "[]" then [] else
  let s = if String.length s >= 2 && s.[0] = '[' && s.[String.length s - 1] = ']' then
    String.sub s 1 (String.length s - 2)
  else s in
  s
  |> String.split_on_char ','
  |> List.map (fun it -> trim_quotes (String.trim it))
  |> List.filter (fun x -> x <> "")

let parse_build_file filename =
  let ic = open_in filename in
  let rec loop acc cur =
    try
      let line = input_line ic |> String.trim in
      if line = "" || String.length line >= 1 && line.[0] = '#' then
        loop acc cur
      else if (String.length line >= 10 && String.sub line 0 10 = "cc_library")
           || (String.length line >= 9 && String.sub line 0 9 = "cc_binary") then
        let kind = if String.sub line 0 10 = "cc_library" then Library else Binary in
        loop acc (Some { name=""; kind; deps=[]; srcs=[]; hdrs=[] })
      else if List.exists (fun c -> String.contains line c) ['='] then
        let parts = String.split_on_char '=' line in
        let key = String.trim (List.hd parts) in
        let value = String.trim (String.concat "=" (List.tl parts)) in
        let update t =
          match key with
          | "name" -> { t with name = trim_quotes value }
          | "srcs" -> { t with srcs = split_list_literal value }
          | "hdrs" -> { t with hdrs = split_list_literal value }
          | "deps" -> { t with deps = split_list_literal value }
          | _ -> t
        in
        loop acc (match cur with Some t -> Some (update t) | None -> cur)
      else if String.contains line ')' then
        let acc = match cur with Some t when t.name <> "" -> t :: acc | _ -> acc in
        loop acc None
      else loop acc cur
    with End_of_file ->
      close_in ic;
      (match cur with Some t when t.name <> "" -> t :: acc | _ -> acc)
  in
  loop [] None
