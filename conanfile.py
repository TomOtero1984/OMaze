import platform
from conan import ConanFile
from conan.tools.cmake import CMakeDeps, CMakeToolchain, cmake_layout

class OMazeDeps(ConanFile):
    name = "omaze_deps"
    version = "0.1.0"
    settings = "os", "arch", "compiler", "build_type"
    generators = "CMakeDeps", "CMakeToolchain"
    package_type = "application"
    # Let Conan handle transitive deps and build missing when needed
    options = {
        "shared": [True, False]
    }
    default_options = {
        "shared": False,
        # Common overrides to keep things linkable
        "abseil*:shared": False,
        "protobuf*:shared": False,
        "grpc*:shared": False,
    }

    def requirements(self):
        # Core Google stack
        # self.requires("abseil/[>=20230802.1 <=20250127.0]")
        self.requires("protobuf/5.27.0")
        self.requires("grpc/1.72.0")
        # self.requires("re2/20230301")

        # Testing
        # self.requires("gtest/1.17.0")

        # Numerics / utils
        self.requires("eigen/5.0.0")
        self.requires("flatbuffers/24.12.23")

        # Networking stack commonly used with gRPC
        self.requires("c-ares/1.34.5")
        self.requires("openssl/3.6.0")
        self.requires("libcurl/8.16.0")

        # ML operator libs used by LiteRT/TFLite paths
        self.requires("xnnpack/cci.20240229")
        # self.requires("cpuinfo/cci.20231129")
        if ("x86" in platform.processor()):
          self.requires("intel-neon2sse/cci.20210225")

        # OpenCL headers + ICD loader (if your project enables OpenCL)
        self.requires("opencl-headers/2023.12.14")
        self.requires("opencl-icd-loader/2023.12.14")

        self.requires("fp16/cci.20210320")

    def build_requirements(self):
        # Provide protoc + grpc plugins at build time if .proto files need codegen
        self.tool_requires("protobuf/5.27.0")
        self.tool_requires("grpc/1.72.0")

    def layout(self):
        cmake_layout(self)

    def generate(self):
      pass

    def build(self):
        pass  # This package only provides dependencies for your CMake project
