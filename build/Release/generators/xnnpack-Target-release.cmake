# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(xnnpack_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(xnnpack_FRAMEWORKS_FOUND_RELEASE "${xnnpack_FRAMEWORKS_RELEASE}" "${xnnpack_FRAMEWORK_DIRS_RELEASE}")

set(xnnpack_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET xnnpack_DEPS_TARGET)
    add_library(xnnpack_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET xnnpack_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${xnnpack_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${xnnpack_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:cpuinfo::cpuinfo;pthreadpool::pthreadpool;fxdiv::fxdiv;fp16::fp16>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### xnnpack_DEPS_TARGET to all of them
conan_package_library_targets("${xnnpack_LIBS_RELEASE}"    # libraries
                              "${xnnpack_LIB_DIRS_RELEASE}" # package_libdir
                              "${xnnpack_BIN_DIRS_RELEASE}" # package_bindir
                              "${xnnpack_LIBRARY_TYPE_RELEASE}"
                              "${xnnpack_IS_HOST_WINDOWS_RELEASE}"
                              xnnpack_DEPS_TARGET
                              xnnpack_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "xnnpack"    # package_name
                              "${xnnpack_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${xnnpack_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET xnnpack::xnnpack
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${xnnpack_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${xnnpack_LIBRARIES_TARGETS}>
                 )

    if("${xnnpack_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET xnnpack::xnnpack
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     xnnpack_DEPS_TARGET)
    endif()

    set_property(TARGET xnnpack::xnnpack
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${xnnpack_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET xnnpack::xnnpack
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${xnnpack_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET xnnpack::xnnpack
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${xnnpack_LIB_DIRS_RELEASE}>)
    set_property(TARGET xnnpack::xnnpack
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${xnnpack_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET xnnpack::xnnpack
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${xnnpack_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(xnnpack_LIBRARIES_RELEASE xnnpack::xnnpack)
