# Avoid multiple calls to find_package to append duplicated properties to the targets
include_guard()########### VARIABLES #######################################################################
#############################################################################################
set(cpuinfo_FRAMEWORKS_FOUND_RELEASE "") # Will be filled later
conan_find_apple_frameworks(cpuinfo_FRAMEWORKS_FOUND_RELEASE "${cpuinfo_FRAMEWORKS_RELEASE}" "${cpuinfo_FRAMEWORK_DIRS_RELEASE}")

set(cpuinfo_LIBRARIES_TARGETS "") # Will be filled later


######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
if(NOT TARGET cpuinfo_DEPS_TARGET)
    add_library(cpuinfo_DEPS_TARGET INTERFACE IMPORTED)
endif()

set_property(TARGET cpuinfo_DEPS_TARGET
             APPEND PROPERTY INTERFACE_LINK_LIBRARIES
             $<$<CONFIG:Release>:${cpuinfo_FRAMEWORKS_FOUND_RELEASE}>
             $<$<CONFIG:Release>:${cpuinfo_SYSTEM_LIBS_RELEASE}>
             $<$<CONFIG:Release>:>)

####### Find the libraries declared in cpp_info.libs, create an IMPORTED target for each one and link the
####### cpuinfo_DEPS_TARGET to all of them
conan_package_library_targets("${cpuinfo_LIBS_RELEASE}"    # libraries
                              "${cpuinfo_LIB_DIRS_RELEASE}" # package_libdir
                              "${cpuinfo_BIN_DIRS_RELEASE}" # package_bindir
                              "${cpuinfo_LIBRARY_TYPE_RELEASE}"
                              "${cpuinfo_IS_HOST_WINDOWS_RELEASE}"
                              cpuinfo_DEPS_TARGET
                              cpuinfo_LIBRARIES_TARGETS  # out_libraries_targets
                              "_RELEASE"
                              "cpuinfo"    # package_name
                              "${cpuinfo_NO_SONAME_MODE_RELEASE}")  # soname

# FIXME: What is the result of this for multi-config? All configs adding themselves to path?
set(CMAKE_MODULE_PATH ${cpuinfo_BUILD_DIRS_RELEASE} ${CMAKE_MODULE_PATH})

########## COMPONENTS TARGET PROPERTIES Release ########################################

    ########## COMPONENT cpuinfo::cpuinfo #############

        set(cpuinfo_cpuinfo_cpuinfo_FRAMEWORKS_FOUND_RELEASE "")
        conan_find_apple_frameworks(cpuinfo_cpuinfo_cpuinfo_FRAMEWORKS_FOUND_RELEASE "${cpuinfo_cpuinfo_cpuinfo_FRAMEWORKS_RELEASE}" "${cpuinfo_cpuinfo_cpuinfo_FRAMEWORK_DIRS_RELEASE}")

        set(cpuinfo_cpuinfo_cpuinfo_LIBRARIES_TARGETS "")

        ######## Create an interface target to contain all the dependencies (frameworks, system and conan deps)
        if(NOT TARGET cpuinfo_cpuinfo_cpuinfo_DEPS_TARGET)
            add_library(cpuinfo_cpuinfo_cpuinfo_DEPS_TARGET INTERFACE IMPORTED)
        endif()

        set_property(TARGET cpuinfo_cpuinfo_cpuinfo_DEPS_TARGET
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${cpuinfo_cpuinfo_cpuinfo_FRAMEWORKS_FOUND_RELEASE}>
                     $<$<CONFIG:Release>:${cpuinfo_cpuinfo_cpuinfo_SYSTEM_LIBS_RELEASE}>
                     $<$<CONFIG:Release>:${cpuinfo_cpuinfo_cpuinfo_DEPENDENCIES_RELEASE}>
                     )

        ####### Find the libraries declared in cpp_info.component["xxx"].libs,
        ####### create an IMPORTED target for each one and link the 'cpuinfo_cpuinfo_cpuinfo_DEPS_TARGET' to all of them
        conan_package_library_targets("${cpuinfo_cpuinfo_cpuinfo_LIBS_RELEASE}"
                              "${cpuinfo_cpuinfo_cpuinfo_LIB_DIRS_RELEASE}"
                              "${cpuinfo_cpuinfo_cpuinfo_BIN_DIRS_RELEASE}" # package_bindir
                              "${cpuinfo_cpuinfo_cpuinfo_LIBRARY_TYPE_RELEASE}"
                              "${cpuinfo_cpuinfo_cpuinfo_IS_HOST_WINDOWS_RELEASE}"
                              cpuinfo_cpuinfo_cpuinfo_DEPS_TARGET
                              cpuinfo_cpuinfo_cpuinfo_LIBRARIES_TARGETS
                              "_RELEASE"
                              "cpuinfo_cpuinfo_cpuinfo"
                              "${cpuinfo_cpuinfo_cpuinfo_NO_SONAME_MODE_RELEASE}")


        ########## TARGET PROPERTIES #####################################
        set_property(TARGET cpuinfo::cpuinfo
                     APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                     $<$<CONFIG:Release>:${cpuinfo_cpuinfo_cpuinfo_OBJECTS_RELEASE}>
                     $<$<CONFIG:Release>:${cpuinfo_cpuinfo_cpuinfo_LIBRARIES_TARGETS}>
                     )

        if("${cpuinfo_cpuinfo_cpuinfo_LIBS_RELEASE}" STREQUAL "")
            # If the component is not declaring any "cpp_info.components['foo'].libs" the system, frameworks etc are not
            # linked to the imported targets and we need to do it to the global target
            set_property(TARGET cpuinfo::cpuinfo
                         APPEND PROPERTY INTERFACE_LINK_LIBRARIES
                         cpuinfo_cpuinfo_cpuinfo_DEPS_TARGET)
        endif()

        set_property(TARGET cpuinfo::cpuinfo APPEND PROPERTY INTERFACE_LINK_OPTIONS
                     $<$<CONFIG:Release>:${cpuinfo_cpuinfo_cpuinfo_LINKER_FLAGS_RELEASE}>)
        set_property(TARGET cpuinfo::cpuinfo APPEND PROPERTY INTERFACE_INCLUDE_DIRECTORIES
                     $<$<CONFIG:Release>:${cpuinfo_cpuinfo_cpuinfo_INCLUDE_DIRS_RELEASE}>)
        set_property(TARGET cpuinfo::cpuinfo APPEND PROPERTY INTERFACE_LINK_DIRECTORIES
                     $<$<CONFIG:Release>:${cpuinfo_cpuinfo_cpuinfo_LIB_DIRS_RELEASE}>)
        set_property(TARGET cpuinfo::cpuinfo APPEND PROPERTY INTERFACE_COMPILE_DEFINITIONS
                     $<$<CONFIG:Release>:${cpuinfo_cpuinfo_cpuinfo_COMPILE_DEFINITIONS_RELEASE}>)
        set_property(TARGET cpuinfo::cpuinfo APPEND PROPERTY INTERFACE_COMPILE_OPTIONS
                     $<$<CONFIG:Release>:${cpuinfo_cpuinfo_cpuinfo_COMPILE_OPTIONS_RELEASE}>)


    ########## AGGREGATED GLOBAL TARGET WITH THE COMPONENTS #####################
    set_property(TARGET cpuinfo::cpuinfo APPEND PROPERTY INTERFACE_LINK_LIBRARIES cpuinfo::cpuinfo)

########## For the modules (FindXXX)
set(cpuinfo_LIBRARIES_RELEASE cpuinfo::cpuinfo)
