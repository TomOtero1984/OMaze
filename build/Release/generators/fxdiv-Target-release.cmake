# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(fxdiv_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(fxdiv_FRAMEWORKS_FOUND_RELEASE "${fxdiv_FRAMEWORKS_RELEASE}" "${fxdiv_FRAMEWORK_DIRS_RELEASE}")

set(fxdiv_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET fxdiv_DEPS_TARGET)
    add_library(fxdiv_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET fxdiv_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${fxdiv_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${fxdiv_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### fxdiv_DEPS_TARGET to all of them
conan_package_library_targets("${fxdiv_LIBS_RELEASE}"    # libraries
                              "${fxdiv_LIB_DIRS_RELEASE}" # package_libdir
                              "${fxdiv_BIN_DIRS_RELEASE}" # package_bindir
                              "${fxdiv_LIBRARY_TYPE_RELEASE}"
                              "${fxdiv_IS_HOST_WINDOWS_RELEASE}"
                              fxdiv_DEPS_TARGET
                              fxdiv_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "fxdiv"    # package_name
                              "${fxdiv_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${fxdiv_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET fxdiv::fxdiv
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${fxdiv_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${fxdiv_LIBRARIES_TARGETS}>
                 )

    if("${fxdiv_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET fxdiv::fxdiv
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     fxdiv_DEPS_TARGET)
    endif()

    set_property(TARGET fxdiv::fxdiv
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${fxdiv_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET fxdiv::fxdiv
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${fxdiv_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET fxdiv::fxdiv
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${fxdiv_LIB_DIRS_RELEASE}>)
    set_property(TARGET fxdiv::fxdiv
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${fxdiv_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET fxdiv::fxdiv
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${fxdiv_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(fxdiv_LIBRARIES_RELEASE fxdiv::fxdiv)
