########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(xnnpack_FIND_QUIETLY)
    set(xnnpack_MESSAGE_MODE VERBOSE)
else()
    set(xnnpack_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/xnnpackTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${xnnpack_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(xnnpack_VERSION_STRING "cci.20240229")
set(xnnpack_INCLUDE_DIRS ${xnnpack_INCLUDE_DIRS_RELEASE} )
set(xnnpack_INCLUDE_DIR ${xnnpack_INCLUDE_DIRS_RELEASE} )
set(xnnpack_LIBRARIES ${xnnpack_LIBRARIES_RELEASE} )
set(xnnpack_DEFINITIONS ${xnnpack_DEFINITIONS_RELEASE} )


# Definition of extra CMake variables from cmake_extra_variables


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${xnnpack_BUILD_MODULES_PATHS_RELEASE} )
    message(${xnnpack_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


