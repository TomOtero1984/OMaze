# Exporting the Bazel Dependency Graph

We first produce a machine-readable representation of all build targets and dependencies.

## Requirements
- Python 3.10+
- Bazelisk (recommended)

## Command
```bash
bazel query --output=streamed_jsonproto //... > full_bazel_graph.json
```

This file represents **all** build targets and dependencies. It is the input to OMaze's parsing pipeline.
