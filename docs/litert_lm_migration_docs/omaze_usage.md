# Using OMaze

OMaze converts BUILD graph → CMake scaffold.

```bash
omaze full_bazel_graph.json output/
```

The result is a directory tree containing:
- `CMakeLists.txt` files mirroring Bazel target structure
- Minimal target relationships

This scaffold is **not** expected to compile yet. We refine it during dependency integration.
