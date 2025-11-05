########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(pthreadpool_COMPONENT_NAMES "")
if(DEFINED pthreadpool_FIND_DEPENDENCY_NAMES)
  list(APPEND pthreadpool_FIND_DEPENDENCY_NAMES fxdiv)
  list(REMOVE_DUPLICATES pthreadpool_FIND_DEPENDENCY_NAMES)
else()
  set(pthreadpool_FIND_DEPENDENCY_NAMES fxdiv)
endif()
set(fxdiv_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(pthreadpool_PACKAGE_FOLDER_RELEASE "/Users/totero/.conan2/p/b/pthre2e99474e6b00d/p")
set(pthreadpool_BUILD_MODULES_PATHS_RELEASE )


set(pthreadpool_INCLUDE_DIRS_RELEASE "${pthreadpool_PACKAGE_FOLDER_RELEASE}/include")
set(pthreadpool_RES_DIRS_RELEASE )
set(pthreadpool_DEFINITIONS_RELEASE )
set(pthreadpool_SHARED_LINK_FLAGS_RELEASE )
set(pthreadpool_EXE_LINK_FLAGS_RELEASE )
set(pthreadpool_OBJECTS_RELEASE )
set(pthreadpool_COMPILE_DEFINITIONS_RELEASE )
set(pthreadpool_COMPILE_OPTIONS_C_RELEASE )
set(pthreadpool_COMPILE_OPTIONS_CXX_RELEASE )
set(pthreadpool_LIB_DIRS_RELEASE "${pthreadpool_PACKAGE_FOLDER_RELEASE}/lib")
set(pthreadpool_BIN_DIRS_RELEASE )
set(pthreadpool_LIBRARY_TYPE_RELEASE STATIC)
set(pthreadpool_IS_HOST_WINDOWS_RELEASE 0)
set(pthreadpool_LIBS_RELEASE pthreadpool)
set(pthreadpool_SYSTEM_LIBS_RELEASE )
set(pthreadpool_FRAMEWORK_DIRS_RELEASE )
set(pthreadpool_FRAMEWORKS_RELEASE )
set(pthreadpool_BUILD_DIRS_RELEASE )
set(pthreadpool_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(pthreadpool_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${pthreadpool_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${pthreadpool_COMPILE_OPTIONS_C_RELEASE}>")
set(pthreadpool_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${pthreadpool_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${pthreadpool_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${pthreadpool_EXE_LINK_FLAGS_RELEASE}>")


set(pthreadpool_COMPONENTS_RELEASE )