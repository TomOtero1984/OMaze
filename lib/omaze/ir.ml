(* IR: minimal model for Bazel query JSON nodes *)
type kind = CC_Library | CC_Binary | CC_Test | Other of string

type target = {
  label : string;      (* full label: //pkg:target or @repo//pkg:target *)
  name  : string;      (* short name *)
  kind  : kind;
  srcs  : string list;
  hdrs  : string list;
  deps  : string list; (* labels *)
  package : string;    (* derived package path, e.g. runtime/core *)
}

(* --- remote dependency support --- *)
type remote_kind = RK_FetchContent | RK_FindPackage | RK_ExternalProject | RK_HeaderOnly

type remote_dep = {
  rd_name : string;
  rd_kind : remote_kind;
  rd_url  : string option;
  rd_tag  : string option;
  rd_options : (string * string) list;
  rd_include_dirs : string list;
  rd_libs : string list;
  rd_optional : bool;
}

let remote_deps_table : (string, remote_dep list) Hashtbl.t = Hashtbl.create 64
let add_remote_deps ~label deps = Hashtbl.replace remote_deps_table label deps
let get_remote_deps label = try Hashtbl.find remote_deps_table label with Not_found -> []

type project = {
  targets : target list;
}
