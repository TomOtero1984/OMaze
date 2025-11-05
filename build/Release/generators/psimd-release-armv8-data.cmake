########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(psimd_COMPONENT_NAMES "")
if(DEFINED psimd_FIND_DEPENDENCY_NAMES)
  list(APPEND psimd_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES psimd_FIND_DEPENDENCY_NAMES)
else()
  set(psimd_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(psimd_PACKAGE_FOLDER_RELEASE "/Users/totero/.conan2/p/psimda325d77c2a502/p")
set(psimd_BUILD_MODULES_PATHS_RELEASE )


set(psimd_INCLUDE_DIRS_RELEASE "${psimd_PACKAGE_FOLDER_RELEASE}/include")
set(psimd_RES_DIRS_RELEASE )
set(psimd_DEFINITIONS_RELEASE )
set(psimd_SHARED_LINK_FLAGS_RELEASE )
set(psimd_EXE_LINK_FLAGS_RELEASE )
set(psimd_OBJECTS_RELEASE )
set(psimd_COMPILE_DEFINITIONS_RELEASE )
set(psimd_COMPILE_OPTIONS_C_RELEASE )
set(psimd_COMPILE_OPTIONS_CXX_RELEASE )
set(psimd_LIB_DIRS_RELEASE )
set(psimd_BIN_DIRS_RELEASE )
set(psimd_LIBRARY_TYPE_RELEASE UNKNOWN)
set(psimd_IS_HOST_WINDOWS_RELEASE 0)
set(psimd_LIBS_RELEASE )
set(psimd_SYSTEM_LIBS_RELEASE )
set(psimd_FRAMEWORK_DIRS_RELEASE )
set(psimd_FRAMEWORKS_RELEASE )
set(psimd_BUILD_DIRS_RELEASE )
set(psimd_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(psimd_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${psimd_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${psimd_COMPILE_OPTIONS_C_RELEASE}>")
set(psimd_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${psimd_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${psimd_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${psimd_EXE_LINK_FLAGS_RELEASE}>")


set(psimd_COMPONENTS_RELEASE )