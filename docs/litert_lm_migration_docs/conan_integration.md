# Conan Integration (Preferred Dependency Model)

We configure Conan to supply dependencies via `find_package()`.

## Steps

```bash
conan profile detect
conan install . -of out/conan --build=missing
cmake -S . -B out/build -DCMAKE_TOOLCHAIN_FILE=out/conan/conan_toolchain.cmake
cmake --build out/build
```

Each external dep discovered earlier should be mapped to a Conan package.

Missing deps → use FetchContent (see `fetchcontent_fallback.md`).
