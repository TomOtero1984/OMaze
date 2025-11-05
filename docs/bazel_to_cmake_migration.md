## 🚀 Bazel to CMake Migration: Dependency Strategy

This document outlines the approach for integrating complex external dependencies (migrated from Bazel's system) into a standard CMake build. The strategy focuses on dividing dependencies into two categories: **Directly Integrable** (built from source via CMake) and **Precompiled Artifacts** (distributed as binaries).

***

## 1. Dependency Breakdown

Dependencies are categorized based on their complexity, size, and toolchain requirements.

### 1.1. 🟢 Direct Integration (Source or System)

These dependencies have functional `CMakeLists.txt` files and can be built on-the-fly using `FetchContent` or located using standard `find_package()`.

| Bazel Name | Library | Git URL / Source Reference | CMake Inclusion Method |
| :--- | :--- | :--- | :--- |
| **@arm\_neon\_2\_x86\_sse** | ARM\_NEON\_2\_x86\_SSE | `https://github.com/intel/ARM_NEON_2_x86_SSE.git` | `FetchContent` / `add_subdirectory` |
| **@boringssl** | BoringSSL | `https://boringssl.googlesource.com/boringssl` | `FetchContent` |
| **@com\_github\_cares\_cares** | c-ares | `https://github.com/c-ares/c-ares.git` | `FetchContent` or `find_package(C-ARES)` |
| **@com\_github\_grpc\_grpc** | gRPC | `https://github.com/grpc/grpc.git` | `FetchContent` or `find_package(gRPC)` |
| **@com\_google\_absl** | Abseil-cpp | `https://github.com/abseil/abseil-cpp.git` | `FetchContent` (Recommended) |
| **@com\_google\_googletest** | GoogleTest | `https://github.com/google/googletest.git` | `FetchContent` or `find_package(GTest)` |
| **@com\_google\_protobuf** | Protobuf | `https://github.com/protocolbuffers/protobuf.git` | `FetchContent` or `find_package(Protobuf)` |
| **@com\_googlesource\_code\_re2** | RE2 | `https://github.com/google/re2.git` | `FetchContent` (Requires Abseil) |
| **@compute\_library** | Arm Compute Library | `https://github.com/ARM-software/ComputeLibrary.git` | `FetchContent` |
| **@cpuinfo** | cpuinfo | `https://github.com/pytorch/cpuinfo.git` | `FetchContent` |
| **@curl** | cURL | `https://curl.se/download.html` | `find_package(CURL)` |
| **@eigen\_archive** | Eigen | `https://gitlab.com/libeigen/eigen.git` | `FetchContent` (Header-only) |
| **@farmhash\_archive** | FarmHash | `https://github.com/google/farmhash.git` | `FetchContent` |
| **@flatbuffers** | FlatBuffers | `https://github.com/google/flatbuffers.git` | `FetchContent` or `find_package(FlatBuffers)` |
| **@llvm-project** | LLVM Project | `https://github.com/llvm/llvm-project.git` | `FetchContent` (if small parts needed) |
| **@clog** | clog-lib | `https://github.com/clog-tool/clog-lib.git` | `FetchContent` (Note: Primary language is Rust) |
| **@com\_google\_googleapis** | Google APIs | `https://github.com/googleapis/googleapis.git` | `FetchContent` (Source for `.proto` files) |

### 1.2. 🔴 Precompiled Artifacts (Binary Distribution Required)

These dependencies are **too complex, too large, or proprietary**. They must be compiled once for every required platform/config and distributed as binaries.

| Bazel Name | Library | Rationale |
| :--- | :--- | :--- |
| **@org\_tensorflow** | TensorFlow | Extremely complex, long build time, specific toolchain requirements. |
| **@local\_tsl** | TF Service Library | Highly-coupled internal TensorFlow component. |
| **@local\_xla** | XLA Compiler | Highly-coupled internal TensorFlow component. |
| **@qairt** | QAIRT SDK | Proprietary/Licensed SDK. Requires use of vendor-provided binaries. |

### 1.3. 🗑️ Retired (Bazel-Specific Concepts)

These names refer to Bazel-specific rules or toolchain configurations and must be replaced by native CMake commands.

* `@bazel_tools`, `@rules_cc`, `@platforms`
* `@local_config_cuda`, `@local_config_rocm` (Replace with CMake's native `find_package(CUDA)` / `find_package(ROCM)`).

***

## 2. Binary Distribution Strategy

The complexity of precompiled dependencies (Platform $\times$ Architecture $\times$ Build Type) requires a robust external distribution system.

### A. The Artifact Builder Repository 🏗️

* **Action:** Create a **separate, dedicated Git repository** (e.g., `project-name-artifact-builder`).
* **Purpose:** This repo contains all scripts (shell, Python, CI/CD) to compile dependencies like **TensorFlow** for every required build matrix combination (e.g., Linux/x64/Release, Windows/x64/Debug, macOS/ARM64/Release).
* **Automation:** Utilize a CI/CD platform (e.g., **GitHub Actions**) within this repo to automatically run the build matrix and upload the resulting archives.

### B. Artifact Storage and Naming ☁️

* **Storage:** The compressed library archives (`.zip`, `.tar.gz`) will be uploaded to a public repository location, such as **GitHub Releases** or a **CDN**.
* **Naming Convention (Crucial):** Archives must follow a strict, predictable naming scheme to allow the consumer's CMake file to correctly select the right binary:
    $$\text{artifact-name-VERSION-OS\_ARCH-BUILD\_TYPE.zip}$$
    * *Example:* `tensorflow-2.16.0-linux_x64-RELEASE.zip`

### C. Consumption in Main Project's CMake 🎯

The `CMakeLists.txt` in the main repository will use the following two-step process to download and link the binaries:

1.  **URL Construction:** Use CMake logic to determine the current `OS_ARCH` and `BUILD_TYPE` (Debug/Release) and assemble the exact URL needed.
2.  **Download and Import:** Use **`FetchContent`** to download the specific artifact archive from the CDN/GitHub Releases, then use CMake's **Imported Targets** to expose the linked libraries (`.so`, `.lib`) and header paths to the rest of the project for clean linking.