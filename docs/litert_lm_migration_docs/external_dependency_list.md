# External Dependency Extraction

We produce a list of third-party dependencies that must be resolved via Conan or FetchContent.

## Steps

```bash
python3 scripts/extract_external_deps.py full_bazel_graph.json > external_deps.txt
```

This script:
1. Reads target metadata
2. Identifies external repo references (`@com_google_absl`, etc.)
3. Emits a normalized dependency list

Edit this file manually to map Bazel names → Conan package names.
