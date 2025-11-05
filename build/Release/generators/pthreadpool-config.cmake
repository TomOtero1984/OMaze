########## MACROS ###########################################################################
#############################################################################################

# Requires CMake > 3.15
if(${CMAKE_VERSION} VERSION_LESS "3.15")
    message(FATAL_ERROR "The 'CMakeDeps' generator only works with CMake >= 3.15")
endif()

if(pthreadpool_FIND_QUIETLY)
    set(pthreadpool_MESSAGE_MODE VERBOSE)
else()
    set(pthreadpool_MESSAGE_MODE STATUS)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/cmakedeps_macros.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/pthreadpoolTargets.cmake)
include(CMakeFindDependencyMacro)

check_build_type_defined()

foreach(_DEPENDENCY ${pthreadpool_FIND_DEPENDENCY_NAMES} )
    # Check that we have not already called a find_package with the transitive dependency
    if(NOT ${_DEPENDENCY}_FOUND)
        find_dependency(${_DEPENDENCY} REQUIRED ${${_DEPENDENCY}_FIND_MODE})
    endif()
endforeach()

set(pthreadpool_VERSION_STRING "cci.20231129")
set(pthreadpool_INCLUDE_DIRS ${pthreadpool_INCLUDE_DIRS_RELEASE} )
set(pthreadpool_INCLUDE_DIR ${pthreadpool_INCLUDE_DIRS_RELEASE} )
set(pthreadpool_LIBRARIES ${pthreadpool_LIBRARIES_RELEASE} )
set(pthreadpool_DEFINITIONS ${pthreadpool_DEFINITIONS_RELEASE} )


# Definition of extra CMake variables from cmake_extra_variables


# Only the last installed configuration BUILD_MODULES are included to avoid the collision
foreach(_BUILD_MODULE ${pthreadpool_BUILD_MODULES_PATHS_RELEASE} )
    message(${pthreadpool_MESSAGE_MODE} "Conan: Including build module from '${_BUILD_MODULE}'")
    include(${_BUILD_MODULE})
endforeach()


