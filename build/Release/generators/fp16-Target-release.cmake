# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(fp16_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(fp16_FRAMEWORKS_FOUND_RELEASE "${fp16_FRAMEWORKS_RELEASE}" "${fp16_FRAMEWORK_DIRS_RELEASE}")

set(fp16_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET fp16_DEPS_TARGET)
    add_library(fp16_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET fp16_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${fp16_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${fp16_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:psimd::psimd>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### fp16_DEPS_TARGET to all of them
conan_package_library_targets("${fp16_LIBS_RELEASE}"    # libraries
                              "${fp16_LIB_DIRS_RELEASE}" # package_libdir
                              "${fp16_BIN_DIRS_RELEASE}" # package_bindir
                              "${fp16_LIBRARY_TYPE_RELEASE}"
                              "${fp16_IS_HOST_WINDOWS_RELEASE}"
                              fp16_DEPS_TARGET
                              fp16_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "fp16"    # package_name
                              "${fp16_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${fp16_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## GLOBAL TARGET PROPERTIES Release ########################################
    set_property(TARGET fp16::fp16
                 APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                 $<$<CONFIG:Release>:${fp16_OBJECTS_RELEASE}>
                 $<$<CONFIG:Release>:${fp16_LIBRARIES_TARGETS}>
                 )

    if("${fp16_LIBS_RELEASE}" STREQUAL "")
        # If the package is not declaring any "cpp_info.libs" the package deps, system libs,
        # frameworks etc are not linked to the imported targets and we need to do it to the
        # global target
        set_property(TARGET fp16::fp16
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     fp16_DEPS_TARGET)
    endif()

    set_property(TARGET fp16::fp16
                 APPEND PROPERTY INTERFACE_LINK_OPTIONS
                 $<$<CONFIG:Release>:${fp16_LINKER_FLAGS_RELEASE}>)
    set_property(TARGET fp16::fp16
                 APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                 $<$<CONFIG:Release>:${fp16_INCLUDE_DIRS_RELEASE}>)
    # Necessary to find LINK shared libraries in Linux
    set_property(TARGET fp16::fp16
                 APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                 $<$<CONFIG:Release>:${fp16_LIB_DIRS_RELEASE}>)
    set_property(TARGET fp16::fp16
                 APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                 $<$<CONFIG:Release>:${fp16_COMPILE_DEFINITIONS_RELEASE}>)
    set_property(TARGET fp16::fp16
                 APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                 $<$<CONFIG:Release>:${fp16_COMPILE_OPTIONS_RELEASE}>)

########## For the modules (FindXXX)
set(fp16_LIBRARIES_RELEASE fp16::fp16)
