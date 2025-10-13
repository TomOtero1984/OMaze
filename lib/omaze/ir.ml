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

type project = {
  targets : target list;
}
