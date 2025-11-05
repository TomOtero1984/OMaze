########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(fp16_FIND_QUIETLY)
    set(fp16_MESSAGE_MODE VERBOSE)
else()
    set(fp16_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/fp16Targets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${fp16_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(fp16_VERSION_STRING "cci.20210320")
set(fp16_INCLUDE_DIRS ${fp16_INCLUDE_DIRS_RELEASE} )
set(fp16_INCLUDE_DIR ${fp16_INCLUDE_DIRS_RELEASE} )
set(fp16_LIBRARIES ${fp16_LIBRARIES_RELEASE} )
set(fp16_DEFINITIONS ${fp16_DEFINITIONS_RELEASE} )


# Definition of extra CMake variables from cmake_extra_variables


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${fp16_BUILD_MODULES_PATHS_RELEASE} )
    message(${fp16_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


