# OMaze

OMaze — OCaml-powered Bazel → CMake converter (scaffold).

This scaffold provides a minimal, interview-ready prototype:
 - parsing a small subset of Bazel BUILD files (cc_library / cc_binary)
 - building an IR
 - topological sorting of targets
 - generating CMake output

Quick start (with dune):
```
dune build ./main.exe
dune exec ./main.exe -- test/sample_build
```

