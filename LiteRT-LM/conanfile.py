from conan import ConanFile
from conan.tools.cmake import CMakeDeps, CMakeToolchain, cmake_layout

class LiteRTLMDeps(ConanFile):
    name = "litert_lm_deps"
    version = "0.1.0"
    settings = "os", "arch", "compiler", "build_type"
    generators = "CMakeDeps", "CMakeToolchain"
    package_type = "application"

    # Global toggles
    options = {
        "shared": [True, False],
    }
    default_options = {
        "shared": False,

        # Common stability choices (static by default -> fewer ODR/link surprises)
        "abseil*:shared": False,
        "protobuf*:shared": False,
        "re2*:shared": False,
        "flatbuffers*:shared": False,
        "gtest*:shared": False,
        "zlib*:shared": False,
        "minizip-ng*:shared": False,
        "kissfft*:shared": False,
        "miniaudio*:shared": False,
        # "sentencepiece*:shared": False,
    }

    def requirements(self):
        # Core Google stack
        self.requires("abseil/20240116.1")       # absl
        self.requires("protobuf/5.27.0")         # proto runtime + protoc in tool_requires if you need codegen
        self.requires("re2/20250722")
        self.requires("flatbuffers/24.12.23")

        # JSON
        self.requires("nlohmann_json/3.11.3")    # header-only, widely used

        # Tests
        self.requires("gtest/1.14.0")            # solid ConanCenter version (adjust if you need newer)

        # Compression / archive
        self.requires("zlib/1.3.1")
        self.requires("minizip-ng/4.0.7")        # better maintained than legacy “minizip”

        # DSP / audio (present in your list)
        self.requires("kissfft/131.1.0")
        self.requires("miniaudio/0.11.22")

        # NLP bits seen in your list
        # self.requires("sentencepiece/0.2.0")     # adjust if you target an older/newer version
        self.requires("stb/cci.20230920")        # header-only (images/text utils)

        # NOTE: tokenizers_cpp wasn’t added: no widely-used Conan recipe under that id.
        # If you actually need it, tell me the upstream repo and I’ll add a custom recipe
        # or we can vend it via FetchContent.

    def build_requirements(self):
        # If you actually generate sources from .proto:
        self.tool_requires("protobuf/6.32.1")

    def layout(self):
        cmake_layout(self)

    def generate(self):
        #tc = CMakeToolchain(self)
        #tc.generate()
        #deps = CMakeDeps(self)
        #deps.generate()
        pass

    def build(self):
        pass
