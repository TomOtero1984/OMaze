# OMaze
_*OCaml powered Bazel -> CMake generator*_

## Description
OMaze is a CMake project generator leveraging OCaml to parse streamed_jsonproto out from Bazel.
The intented purpose of this tool is to facilitate Bazel -> CMake refactors.

In its current state, OMaze can generate a file structure with CMakeList.txt files in place of Bazel's BUILD files. The generated CMakeList.txt are a rough approximation of targets. The output from this tool is not going to build ready to build, but it should reduce the time spent creating boilerplate.

## Steps
The following setup steps use Nix. While not required, I highly recommend using Nix to keep your environment clean. For more information see [https://nixos.org/](https://nixos.org/).


#### Setup
1. Install Bazelisk
```
nix profile install bazelisk
```
2. Install OCaml, Dune, and Opam
```
nix profile install nixpkgs#ocaml nixpkgs#dune nixpkgs#opam
```
3. Build OMaze
```
dune build
```
#### Run
1. Generate a streamed_jsonproto from the Bazel project
```
bazelisk query //... --output=streamed_jsonproto > bazel_graph.jsonl
```
2. Parse the jsonl with OMaze
```
_build/default/bin/main.exe bazel_graph.json output
```
---

## Example output

#### BUILD file snippet
```
cc_library(
    name = "litert_c_types_printing",
    hdrs = ["litert_c_types_printing.h"],
    deps = [
        ":litert_logging",
        "//litert/c:litert_layout",
        "//litert/c:litert_model_types",
        "//litert/c:litert_op_code",
        "@com_google_absl//absl/strings",
        "@com_google_absl//absl/strings:str_format",
        "@com_google_absl//absl/types:span",
    ],
)

cc_test(
    name = "litert_c_types_printing_test",
    srcs = ["litert_c_types_printing_test.cc"],
    deps = [
        ":litert_c_types_printing",
        "//litert/c:litert_layout",
        "//litert/c:litert_model_types",
        "//litert/c:litert_op_code",
        "@com_google_absl//absl/strings:str_format",
        "@com_google_googletest//:gtest_main",
    ],
)
```

### Bazel query output
_Due to size the snippet was removed and placed in [examples/](examples/bazel_query_example.jsonl)_

### Generated CMakeLists.txt snippet
```CMake
add_library(litert_cc_litert_c_types_printing INTERFACE)
target_include_directories(litert_cc_litert_c_types_printing INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
# NOTE: litert_cc_litert_c_types_printing has deps but is INTERFACE; listing deps for clarity

add_executable(litert_cc_litert_c_types_printing_test
  litert_c_types_printing_test.cc
)
target_link_libraries(litert_cc_litert_c_types_printing_test PRIVATE litert_cc_litert_c_types_printing litert_c_litert_layout litert_c_litert_model_types litert_c_litert_op_code com_google_absl_absl_strings_str_format com_google_googletest_gtest_main rules_cc_link_extra_lib)
add_test(NAME litert_cc_litert_c_types_printing_test COMMAND litert_cc_litert_c_types_printing_test)
```
