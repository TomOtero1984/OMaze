# Troubleshooting

### Missing symbols
→ Link correct targets via `target_link_libraries()`

### Headers not found
→ Ensure include directories are attached using `PUBLIC` / `PRIVATE`

### Mixed linkage issues
→ Ensure `BUILD_SHARED_LIBS` and Conan options match

### Dependency not found via `find_package`
→ Verify Conan package exports `cmake_target_name` in `package_info()`
