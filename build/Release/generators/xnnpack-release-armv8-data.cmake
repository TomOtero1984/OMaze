########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

set(xnnpack_COMPONENT_NAMES "")
if(DEFINED xnnpack_FIND_DEPENDENCY_NAMES)
  list(APPEND xnnpack_FIND_DEPENDENCY_NAMES cpuinfo pthreadpool fxdiv fp16)
  list(REMOVE_DUPLICATES xnnpack_FIND_DEPENDENCY_NAMES)
else()
  set(xnnpack_FIND_DEPENDENCY_NAMES cpuinfo pthreadpool fxdiv fp16)
endif()
set(cpuinfo_FIND_MODE "NO_MODULE")
set(pthreadpool_FIND_MODE "NO_MODULE")
set(fxdiv_FIND_MODE "NO_MODULE")
set(fp16_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(xnnpack_PACKAGE_FOLDER_RELEASE "/Users/totero/.conan2/p/b/xnnpad31ec77b17023/p")
set(xnnpack_BUILD_MODULES_PATHS_RELEASE )


set(xnnpack_INCLUDE_DIRS_RELEASE "${xnnpack_PACKAGE_FOLDER_RELEASE}/include")
set(xnnpack_RES_DIRS_RELEASE )
set(xnnpack_DEFINITIONS_RELEASE )
set(xnnpack_SHARED_LINK_FLAGS_RELEASE )
set(xnnpack_EXE_LINK_FLAGS_RELEASE )
set(xnnpack_OBJECTS_RELEASE )
set(xnnpack_COMPILE_DEFINITIONS_RELEASE )
set(xnnpack_COMPILE_OPTIONS_C_RELEASE )
set(xnnpack_COMPILE_OPTIONS_CXX_RELEASE )
set(xnnpack_LIB_DIRS_RELEASE "${xnnpack_PACKAGE_FOLDER_RELEASE}/lib")
set(xnnpack_BIN_DIRS_RELEASE )
set(xnnpack_LIBRARY_TYPE_RELEASE STATIC)
set(xnnpack_IS_HOST_WINDOWS_RELEASE 0)
set(xnnpack_LIBS_RELEASE XNNPACK)
set(xnnpack_SYSTEM_LIBS_RELEASE )
set(xnnpack_FRAMEWORK_DIRS_RELEASE )
set(xnnpack_FRAMEWORKS_RELEASE )
set(xnnpack_BUILD_DIRS_RELEASE )
set(xnnpack_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(xnnpack_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${xnnpack_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${xnnpack_COMPILE_OPTIONS_C_RELEASE}>")
set(xnnpack_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${xnnpack_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${xnnpack_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${xnnpack_EXE_LINK_FLAGS_RELEASE}>")


set(xnnpack_COMPONENTS_RELEASE )