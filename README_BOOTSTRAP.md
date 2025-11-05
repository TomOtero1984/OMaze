
# Third-Party Bootstrap (Superbuild-friendly)

## Files
- `deps_manifest.json` — authoritative list of 3P deps (find_package names + OS package hints)
- `cmake/RequireDeps.cmake` — include in the root to report missing deps
- `bootstrap.py` — attempts to satisfy deps via Homebrew/apt/Chocolatey

## Typical flow
```bash
# 1) Check status (from project root):
python3 omaze_bootstrap/bootstrap.py

# 2) CMake config (reports missing deps clearly):
cmake -S output -B build
# or include explicitly:
#   include(${CMAKE_SOURCE_DIR}/omaze_bootstrap/cmake/RequireDeps.cmake)

# 3) If some are still missing:
#    - Use your package manager manually
#    - Or switch those deps to FetchContent in remote_deps.json
```

## Notes
- Vendored-first deps (FP16, FXdiv, XNNPACK, ARM_NEON_2_X86_SSE, cpuinfo, ComputeLibrary, farmhash) are marked as "prefer source".
- For Windows, consider vcpkg and define `CMAKE_TOOLCHAIN_FILE` to use it globally.
- You can extend `deps_manifest.json` or specialize per platform.
