# FetchContent Fallback

For dependencies not available in ConanCenter:

```cmake
include(FetchContent)
FetchContent_Declare(
  absl
  GIT_REPOSITORY https://github.com/abseil/abseil-cpp.git
  GIT_TAG        20240116
)
FetchContent_MakeAvailable(absl)
```

Use sparingly — prefer Conan where possible.
