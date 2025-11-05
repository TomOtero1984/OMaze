# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(minizip-ng_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(minizip-ng_FRAMEWORKS_FOUND_RELEASE "${minizip-ng_FRAMEWORKS_RELEASE}" "${minizip-ng_FRAMEWORK_DIRS_RELEASE}")

set(minizip-ng_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET minizip-ng_DEPS_TARGET)
    add_library(minizip-ng_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET minizip-ng_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${minizip-ng_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${minizip-ng_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:BZip2::BZip2;LibLZMA::LibLZMA;zstd::libzstd_static;openssl::openssl;Iconv::Iconv>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### minizip-ng_DEPS_TARGET to all of them
conan_package_library_targets("${minizip-ng_LIBS_RELEASE}"    # libraries
                              "${minizip-ng_LIB_DIRS_RELEASE}" # package_libdir
                              "${minizip-ng_BIN_DIRS_RELEASE}" # package_bindir
                              "${minizip-ng_LIBRARY_TYPE_RELEASE}"
                              "${minizip-ng_IS_HOST_WINDOWS_RELEASE}"
                              minizip-ng_DEPS_TARGET
                              minizip-ng_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "minizip-ng"    # package_name
                              "${minizip-ng_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${minizip-ng_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT MINIZIP::minizip #############

        set(minizip-ng_MINIZIP_minizip_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(minizip-ng_MINIZIP_minizip_FRAMEWORKS_FOUND_RELEASE "${minizip-ng_MINIZIP_minizip_FRAMEWORKS_RELEASE}" "${minizip-ng_MINIZIP_minizip_FRAMEWORK_DIRS_RELEASE}")

        set(minizip-ng_MINIZIP_minizip_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET minizip-ng_MINIZIP_minizip_DEPS_TARGET)
            add_library(minizip-ng_MINIZIP_minizip_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET minizip-ng_MINIZIP_minizip_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${minizip-ng_MINIZIP_minizip_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${minizip-ng_MINIZIP_minizip_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${minizip-ng_MINIZIP_minizip_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'minizip-ng_MINIZIP_minizip_DEPS_TARGET' to all of them
        conan_package_library_targets("${minizip-ng_MINIZIP_minizip_LIBS_RELEASE}"
                              "${minizip-ng_MINIZIP_minizip_LIB_DIRS_RELEASE}"
                              "${minizip-ng_MINIZIP_minizip_BIN_DIRS_RELEASE}" # package_bindir
                              "${minizip-ng_MINIZIP_minizip_LIBRARY_TYPE_RELEASE}"
                              "${minizip-ng_MINIZIP_minizip_IS_HOST_WINDOWS_RELEASE}"
                              minizip-ng_MINIZIP_minizip_DEPS_TARGET
                              minizip-ng_MINIZIP_minizip_LIBRARIES_TARGETS
                              "_RELEASE"
                              "minizip-ng_MINIZIP_minizip"
                              "${minizip-ng_MINIZIP_minizip_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET MINIZIP::minizip
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${minizip-ng_MINIZIP_minizip_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${minizip-ng_MINIZIP_minizip_LIBRARIES_TARGETS}>
                     )

        if("${minizip-ng_MINIZIP_minizip_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET MINIZIP::minizip
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         minizip-ng_MINIZIP_minizip_DEPS_TARGET)
        endif()

        set_property(TARGET MINIZIP::minizip APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${minizip-ng_MINIZIP_minizip_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET MINIZIP::minizip APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${minizip-ng_MINIZIP_minizip_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET MINIZIP::minizip APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${minizip-ng_MINIZIP_minizip_LIB_DIRS_RELEASE}>)
        set_property(TARGET MINIZIP::minizip APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${minizip-ng_MINIZIP_minizip_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET MINIZIP::minizip APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${minizip-ng_MINIZIP_minizip_COMPILE_OPTIONS_RELEASE}>)


    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET MINIZIP::minizip APPEND PROPERTY INTERFACE_LINK_LIBRARIES MINIZIP::minizip)

########## For the modules (FindXXX)
set(minizip-ng_LIBRARIES_RELEASE MINIZIP::minizip)
