#!/usr/bin/env python3
import json, re, sys
if len(sys.argv) != 3:
    print("usage: gen_remote_deps_skeleton.py <full_bazel_graph.json> <out.json>")
    sys.exit(2)
inp, outp = sys.argv[1], sys.argv[2]
repos = set()
with open(inp, 'r', encoding='utf-8') as f:
    for line in f:
        for m in re.findall(r'"(@[\w\-\.]+)', line):
            repos.add(m)
data = {"by_repo": { r: { "name": r[1:], "kind": "FindPackage", "libs": [] } for r in sorted(repos) }, "by_label": {}}
with open(outp, 'w', encoding='utf-8') as f:
    json.dump(data, f, indent=2)
print(f"Wrote skeleton with {len(repos)} repos to {outp}")