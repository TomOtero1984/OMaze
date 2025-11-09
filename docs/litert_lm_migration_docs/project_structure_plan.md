# Migration Plan

1. Export dependency graph
2. Generate external dependency list
3. Run OMaze → generate scaffold
4. Introduce Conan dependency model
5. Replace missing deps with FetchContent
6. Standardize builds via CMakePresets
7. Incrementally validate targets
8. Remove Bazel

This process supports partial and staged migration.
