########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND cpuinfo_COMPONENT_NAMES cpuinfo::cpuinfo)
list(REMOVE_DUPLICATES cpuinfo_COMPONENT_NAMES)
if(DEFINED cpuinfo_FIND_DEPENDENCY_NAMES)
  list(APPEND cpuinfo_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES cpuinfo_FIND_DEPENDENCY_NAMES)
else()
  set(cpuinfo_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(cpuinfo_PACKAGE_FOLDER_RELEASE "/Users/totero/.conan2/p/b/cpuinda83de0d58e1f/p")
set(cpuinfo_BUILD_MODULES_PATHS_RELEASE )


set(cpuinfo_INCLUDE_DIRS_RELEASE )
set(cpuinfo_RES_DIRS_RELEASE )
set(cpuinfo_DEFINITIONS_RELEASE )
set(cpuinfo_SHARED_LINK_FLAGS_RELEASE )
set(cpuinfo_EXE_LINK_FLAGS_RELEASE )
set(cpuinfo_OBJECTS_RELEASE )
set(cpuinfo_COMPILE_DEFINITIONS_RELEASE )
set(cpuinfo_COMPILE_OPTIONS_C_RELEASE )
set(cpuinfo_COMPILE_OPTIONS_CXX_RELEASE )
set(cpuinfo_LIB_DIRS_RELEASE "${cpuinfo_PACKAGE_FOLDER_RELEASE}/lib")
set(cpuinfo_BIN_DIRS_RELEASE )
set(cpuinfo_LIBRARY_TYPE_RELEASE STATIC)
set(cpuinfo_IS_HOST_WINDOWS_RELEASE 0)
set(cpuinfo_LIBS_RELEASE cpuinfo)
set(cpuinfo_SYSTEM_LIBS_RELEASE )
set(cpuinfo_FRAMEWORK_DIRS_RELEASE )
set(cpuinfo_FRAMEWORKS_RELEASE )
set(cpuinfo_BUILD_DIRS_RELEASE )
set(cpuinfo_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(cpuinfo_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${cpuinfo_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${cpuinfo_COMPILE_OPTIONS_C_RELEASE}>")
set(cpuinfo_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${cpuinfo_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${cpuinfo_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${cpuinfo_EXE_LINK_FLAGS_RELEASE}>")


set(cpuinfo_COMPONENTS_RELEASE cpuinfo::cpuinfo)
########### COMPONENT cpuinfo::cpuinfo VARIABLES ############################################

set(cpuinfo_cpuinfo_cpuinfo_INCLUDE_DIRS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_LIB_DIRS_RELEASE "${cpuinfo_PACKAGE_FOLDER_RELEASE}/lib")
set(cpuinfo_cpuinfo_cpuinfo_BIN_DIRS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_LIBRARY_TYPE_RELEASE STATIC)
set(cpuinfo_cpuinfo_cpuinfo_IS_HOST_WINDOWS_RELEASE 0)
set(cpuinfo_cpuinfo_cpuinfo_RES_DIRS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_DEFINITIONS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_OBJECTS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_COMPILE_DEFINITIONS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_COMPILE_OPTIONS_C_RELEASE "")
set(cpuinfo_cpuinfo_cpuinfo_COMPILE_OPTIONS_CXX_RELEASE "")
set(cpuinfo_cpuinfo_cpuinfo_LIBS_RELEASE cpuinfo)
set(cpuinfo_cpuinfo_cpuinfo_SYSTEM_LIBS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_FRAMEWORK_DIRS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_FRAMEWORKS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_DEPENDENCIES_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_SHARED_LINK_FLAGS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_EXE_LINK_FLAGS_RELEASE )
set(cpuinfo_cpuinfo_cpuinfo_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(cpuinfo_cpuinfo_cpuinfo_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${cpuinfo_cpuinfo_cpuinfo_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${cpuinfo_cpuinfo_cpuinfo_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${cpuinfo_cpuinfo_cpuinfo_EXE_LINK_FLAGS_RELEASE}>
)
set(cpuinfo_cpuinfo_cpuinfo_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${cpuinfo_cpuinfo_cpuinfo_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${cpuinfo_cpuinfo_cpuinfo_COMPILE_OPTIONS_C_RELEASE}>")