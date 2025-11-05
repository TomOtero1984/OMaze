# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(kissfft_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(kissfft_FRAMEWORKS_FOUND_RELEASE "${kissfft_FRAMEWORKS_RELEASE}" "${kissfft_FRAMEWORK_DIRS_RELEASE}")

set(kissfft_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET kissfft_DEPS_TARGET)
    add_library(kissfft_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET kissfft_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${kissfft_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${kissfft_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### kissfft_DEPS_TARGET to all of them
conan_package_library_targets("${kissfft_LIBS_RELEASE}"    # libraries
                              "${kissfft_LIB_DIRS_RELEASE}" # package_libdir
                              "${kissfft_BIN_DIRS_RELEASE}" # package_bindir
                              "${kissfft_LIBRARY_TYPE_RELEASE}"
                              "${kissfft_IS_HOST_WINDOWS_RELEASE}"
                              kissfft_DEPS_TARGET
                              kissfft_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "kissfft"    # package_name
                              "${kissfft_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${kissfft_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT kissfft::kissfft #############

        set(kissfft_kissfft_kissfft_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(kissfft_kissfft_kissfft_FRAMEWORKS_FOUND_RELEASE "${kissfft_kissfft_kissfft_FRAMEWORKS_RELEASE}" "${kissfft_kissfft_kissfft_FRAMEWORK_DIRS_RELEASE}")

        set(kissfft_kissfft_kissfft_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET kissfft_kissfft_kissfft_DEPS_TARGET)
            add_library(kissfft_kissfft_kissfft_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET kissfft_kissfft_kissfft_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${kissfft_kissfft_kissfft_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${kissfft_kissfft_kissfft_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${kissfft_kissfft_kissfft_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'kissfft_kissfft_kissfft_DEPS_TARGET' to all of them
        conan_package_library_targets("${kissfft_kissfft_kissfft_LIBS_RELEASE}"
                              "${kissfft_kissfft_kissfft_LIB_DIRS_RELEASE}"
                              "${kissfft_kissfft_kissfft_BIN_DIRS_RELEASE}" # package_bindir
                              "${kissfft_kissfft_kissfft_LIBRARY_TYPE_RELEASE}"
                              "${kissfft_kissfft_kissfft_IS_HOST_WINDOWS_RELEASE}"
                              kissfft_kissfft_kissfft_DEPS_TARGET
                              kissfft_kissfft_kissfft_LIBRARIES_TARGETS
                              "_RELEASE"
                              "kissfft_kissfft_kissfft"
                              "${kissfft_kissfft_kissfft_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET kissfft::kissfft
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${kissfft_kissfft_kissfft_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${kissfft_kissfft_kissfft_LIBRARIES_TARGETS}>
                     )

        if("${kissfft_kissfft_kissfft_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET kissfft::kissfft
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         kissfft_kissfft_kissfft_DEPS_TARGET)
        endif()

        set_property(TARGET kissfft::kissfft APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${kissfft_kissfft_kissfft_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET kissfft::kissfft APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${kissfft_kissfft_kissfft_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET kissfft::kissfft APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${kissfft_kissfft_kissfft_LIB_DIRS_RELEASE}>)
        set_property(TARGET kissfft::kissfft APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${kissfft_kissfft_kissfft_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET kissfft::kissfft APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${kissfft_kissfft_kissfft_COMPILE_OPTIONS_RELEASE}>)


    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET kissfft::kissfft APPEND PROPERTY INTERFACE_LINK_LIBRARIES kissfft::kissfft)

########## For the modules (FindXXX)
set(kissfft_LIBRARIES_RELEASE kissfft::kissfft)
