# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(psimd_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(psimd_FRAMEWORKS_FOUND_RELEASE "${psimd_FRAMEWORKS_RELEASE}" "${psimd_FRAMEWORK_DIRS_RELEASE}")

set(psimd_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET psimd_DEPS_TARGET)
    add_library(psimd_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET psimd_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${psimd_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${psimd_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### psimd_DEPS_TARGET to all of them
conan_package_library_targets("${psimd_LIBS_RELEASE}"    # libraries
                              "${psimd_LIB_DIRS_RELEASE}" # package_libdir
                              "${psimd_BIN_DIRS_RELEASE}" # package_bindir
                              "${psimd_LIBRARY_TYPE_RELEASE}"
                              "${psimd_IS_HOST_WINDOWS_RELEASE}"
                              psimd_DEPS_TARGET
                              psimd_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "psimd"    # package_name
                              "${psimd_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${psimd_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET psimd::psimd
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${psimd_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${psimd_LIBRARIES_TARGETS}>
                 )

    if("${psimd_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET psimd::psimd
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     psimd_DEPS_TARGET)
    endif()

    set_property(TARGET psimd::psimd
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${psimd_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET psimd::psimd
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${psimd_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET psimd::psimd
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${psimd_LIB_DIRS_RELEASE}>)
    set_property(TARGET psimd::psimd
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${psimd_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET psimd::psimd
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${psimd_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(psimd_LIBRARIES_RELEASE psimd::psimd)
