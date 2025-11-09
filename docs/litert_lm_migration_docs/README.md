# LiteRT-LM Bazel → CMake Migration

This document collection explains how to migrate a large-scale Bazel-based C++ project to CMake using:

- Conan 2 (preferred dependency manager)
- FetchContent (fallback for non-packaged deps)
- Bazel query + JSON graph export
- Python tooling to derive external dependency lists
- OMaze (Bazel → CMakeLists.txt generator)

Audience: Intermediate engineers familiar with either Bazel or CMake, but not both.

See `introduction.md` to begin.
