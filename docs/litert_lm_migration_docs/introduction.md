# Introduction

This guide documents how to migrate the LiteRT-LM project from Bazel to CMake. The workflow supports incremental adoption, reproducibility, and integration with modern CI.

Key concepts:
- We **do not** rewrite the project manually.
- We **export the Bazel dependency graph**, convert it to a structured intermediate form, and feed it to **OMaze**, which generates CMake scaffolding.
- We then introduce **Conan 2** as the primary dependency resolver.
- For dependencies not packaged in Conan, we use **FetchContent**.

See `dependency_graph_export.md` next.
