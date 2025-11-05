
# OMaze JSON Generation — Quick Steps

## 1) Generate the Bazel graph JSON
From your repo root run ONE of these (the first is usually fine):

```bash
# Preferred: rule nodes only (keeps size manageable)
bazel query 'kind("rule", //...:all)' --output=streamed_jsonproto > full_bazel_graph.json

# Broader: everything reachable; may be very large
# bazel query 'deps(//...:all)' --output=streamed_jsonproto > full_bazel_graph.json
```

## 2) Create `remote_deps.json`
Use the prefilled file included here (edit if needed), or generate a skeleton:
```bash
# Prefilled (edit as needed)
cp remote_deps.json ./remote_deps.json

# OR auto-generate a skeleton from the graph (then fill in URLs/libs):
python3 gen_remote_deps_skeleton.py full_bazel_graph.json remote_deps.skeleton.json
```

## 3) Run OMaze
```bash
# Without externals mapped
dune exec omaze_cli -- full_bazel_graph.json output

# With externals mapped
dune exec omaze_cli -- full_bazel_graph.json remote_deps.json output
# Or via env var:
OMAZE_REMOTE_DEPS=remote_deps.json dune exec omaze_cli -- full_bazel_graph.json output
```

## 4) Sanity-check the mapping
```bash
python3 validate_remote_deps.py remote_deps.json
```
