
# Robust Bazel Graph Extraction (despite load errors)

## Quick path

1) Attempt the query and capture errors:
```bash
bazel query "kind('rule', //...)" --output=streamed_jsonproto --keep_going   --nohost_deps --noimplicit_deps > full_bazel_graph.json 2> bazel_errors.txt
```

2) Extract exclude list from the errors:
```bash
python3 extract_excludes_from_errors.py bazel_errors.txt excludes.txt
```

3) Re-run with excludes:
```bash
chmod +x run_bazel_query.sh
./run_bazel_query.sh full_bazel_graph.json excludes.txt
```

The script subtracts each bad package by adding `except //<pkg>/...` to the query expression.
