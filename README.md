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
