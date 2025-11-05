########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(fxdiv_COMPONENT_NAMES "")
if(DEFINED fxdiv_FIND_DEPENDENCY_NAMES)
  list(APPEND fxdiv_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES fxdiv_FIND_DEPENDENCY_NAMES)
else()
  set(fxdiv_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(fxdiv_PACKAGE_FOLDER_RELEASE "/Users/totero/.conan2/p/fxdiv315353fad33f0/p")
set(fxdiv_BUILD_MODULES_PATHS_RELEASE )


set(fxdiv_INCLUDE_DIRS_RELEASE "${fxdiv_PACKAGE_FOLDER_RELEASE}/include")
set(fxdiv_RES_DIRS_RELEASE )
set(fxdiv_DEFINITIONS_RELEASE )
set(fxdiv_SHARED_LINK_FLAGS_RELEASE )
set(fxdiv_EXE_LINK_FLAGS_RELEASE )
set(fxdiv_OBJECTS_RELEASE )
set(fxdiv_COMPILE_DEFINITIONS_RELEASE )
set(fxdiv_COMPILE_OPTIONS_C_RELEASE )
set(fxdiv_COMPILE_OPTIONS_CXX_RELEASE )
set(fxdiv_LIB_DIRS_RELEASE )
set(fxdiv_BIN_DIRS_RELEASE )
set(fxdiv_LIBRARY_TYPE_RELEASE UNKNOWN)
set(fxdiv_IS_HOST_WINDOWS_RELEASE 0)
set(fxdiv_LIBS_RELEASE )
set(fxdiv_SYSTEM_LIBS_RELEASE )
set(fxdiv_FRAMEWORK_DIRS_RELEASE )
set(fxdiv_FRAMEWORKS_RELEASE )
set(fxdiv_BUILD_DIRS_RELEASE )
set(fxdiv_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(fxdiv_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${fxdiv_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${fxdiv_COMPILE_OPTIONS_C_RELEASE}>")
set(fxdiv_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${fxdiv_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${fxdiv_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${fxdiv_EXE_LINK_FLAGS_RELEASE}>")


set(fxdiv_COMPONENTS_RELEASE )