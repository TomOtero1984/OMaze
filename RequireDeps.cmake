
# cmake/RequireDeps.cmake
# Usage: include(${CMAKE_SOURCE_DIR}/cmake/RequireDeps.cmake)
# Tries find_package for known deps and prints a concise missing-deps list.

set(_missing_deps "")
function(_try_pkg name)
  string(TOUPPER "${name}" NAME_UP)
  if(NOT ${name}_FOUND AND NOT ${NAME_UP}_FOUND)
    list(APPEND _missing_deps "${name}")
    set(_missing_deps "${_missing_deps}" PARENT_SCOPE)
  endif()
endfunction()

# Core set — keep short; you can extend from deps_manifest.json at configure time.
foreach(_pkg IN ITEMS absl GTest Protobuf gRPC re2 Eigen3 CURL flatbuffers OpenCL ZLIB PNG)
  find_package(${_pkg} QUIET)
  _try_pkg(${_pkg})
endforeach()

if(_missing_deps)
  message(STATUS "---- Missing deps (find_package) ----")
  foreach(d IN LISTS _missing_deps)
    message(STATUS "  - ${d}")
  endforeach()
  message(STATUS "-------------------------------------")
endif()
