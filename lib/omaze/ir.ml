type target_kind = Binary | Library | Test

type target = {
    name : string;
    kind : target_kind;
    deps : string list;
    srcs : string list;
    hdrs : string list;
}

type build_graph = (string, target) Hashtbl.t

let create_graph () : build_graph = Hashtbl.create 256
