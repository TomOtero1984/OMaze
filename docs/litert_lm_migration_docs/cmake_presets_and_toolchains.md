# CMake Presets and Toolchains

We use `CMakePresets.json` to standardize builds.

Example:

```json
{
  "version": 6,
  "configurePresets": [
    {
      "name": "conan-rwd",
      "generator": "Ninja",
      "binaryDir": "out/build/relwithdebinfo",
      "cacheVariables": {
        "CMAKE_BUILD_TYPE": "RelWithDebInfo",
        "CMAKE_TOOLCHAIN_FILE": "out/conan/conan_toolchain.cmake"
      }
    }
  ]
}
```

Toolchains allow layering custom compiler settings **before** Conan applies dependency behavior.
