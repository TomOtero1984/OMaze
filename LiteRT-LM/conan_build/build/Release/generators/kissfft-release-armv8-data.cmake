########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND kissfft_COMPONENT_NAMES kissfft::kissfft)
list(REMOVE_DUPLICATES kissfft_COMPONENT_NAMES)
if(DEFINED kissfft_FIND_DEPENDENCY_NAMES)
  list(APPEND kissfft_FIND_DEPENDENCY_NAMES )
  list(REMOVE_DUPLICATES kissfft_FIND_DEPENDENCY_NAMES)
else()
  set(kissfft_FIND_DEPENDENCY_NAMES )
endif()

########### VARIABLES #######################################################################
#############################################################################################
set(kissfft_PACKAGE_FOLDER_RELEASE "/Users/totero/.conan2/p/b/kissff712af4b5e752/p")
set(kissfft_BUILD_MODULES_PATHS_RELEASE )


set(kissfft_INCLUDE_DIRS_RELEASE "${kissfft_PACKAGE_FOLDER_RELEASE}/include"
			"${kissfft_PACKAGE_FOLDER_RELEASE}/include/kissfft")
set(kissfft_RES_DIRS_RELEASE )
set(kissfft_DEFINITIONS_RELEASE "-Dkiss_fft_scalar=float")
set(kissfft_SHARED_LINK_FLAGS_RELEASE )
set(kissfft_EXE_LINK_FLAGS_RELEASE )
set(kissfft_OBJECTS_RELEASE )
set(kissfft_COMPILE_DEFINITIONS_RELEASE "kiss_fft_scalar=float")
set(kissfft_COMPILE_OPTIONS_C_RELEASE )
set(kissfft_COMPILE_OPTIONS_CXX_RELEASE )
set(kissfft_LIB_DIRS_RELEASE "${kissfft_PACKAGE_FOLDER_RELEASE}/lib")
set(kissfft_BIN_DIRS_RELEASE )
set(kissfft_LIBRARY_TYPE_RELEASE STATIC)
set(kissfft_IS_HOST_WINDOWS_RELEASE 0)
set(kissfft_LIBS_RELEASE kissfft-float)
set(kissfft_SYSTEM_LIBS_RELEASE )
set(kissfft_FRAMEWORK_DIRS_RELEASE )
set(kissfft_FRAMEWORKS_RELEASE )
set(kissfft_BUILD_DIRS_RELEASE )
set(kissfft_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(kissfft_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${kissfft_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${kissfft_COMPILE_OPTIONS_C_RELEASE}>")
set(kissfft_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${kissfft_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${kissfft_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${kissfft_EXE_LINK_FLAGS_RELEASE}>")


set(kissfft_COMPONENTS_RELEASE kissfft::kissfft)
########### COMPONENT kissfft::kissfft VARIABLES ############################################

set(kissfft_kissfft_kissfft_INCLUDE_DIRS_RELEASE "${kissfft_PACKAGE_FOLDER_RELEASE}/include"
			"${kissfft_PACKAGE_FOLDER_RELEASE}/include/kissfft")
set(kissfft_kissfft_kissfft_LIB_DIRS_RELEASE "${kissfft_PACKAGE_FOLDER_RELEASE}/lib")
set(kissfft_kissfft_kissfft_BIN_DIRS_RELEASE )
set(kissfft_kissfft_kissfft_LIBRARY_TYPE_RELEASE STATIC)
set(kissfft_kissfft_kissfft_IS_HOST_WINDOWS_RELEASE 0)
set(kissfft_kissfft_kissfft_RES_DIRS_RELEASE )
set(kissfft_kissfft_kissfft_DEFINITIONS_RELEASE "-Dkiss_fft_scalar=float")
set(kissfft_kissfft_kissfft_OBJECTS_RELEASE )
set(kissfft_kissfft_kissfft_COMPILE_DEFINITIONS_RELEASE "kiss_fft_scalar=float")
set(kissfft_kissfft_kissfft_COMPILE_OPTIONS_C_RELEASE "")
set(kissfft_kissfft_kissfft_COMPILE_OPTIONS_CXX_RELEASE "")
set(kissfft_kissfft_kissfft_LIBS_RELEASE kissfft-float)
set(kissfft_kissfft_kissfft_SYSTEM_LIBS_RELEASE )
set(kissfft_kissfft_kissfft_FRAMEWORK_DIRS_RELEASE )
set(kissfft_kissfft_kissfft_FRAMEWORKS_RELEASE )
set(kissfft_kissfft_kissfft_DEPENDENCIES_RELEASE )
set(kissfft_kissfft_kissfft_SHARED_LINK_FLAGS_RELEASE )
set(kissfft_kissfft_kissfft_EXE_LINK_FLAGS_RELEASE )
set(kissfft_kissfft_kissfft_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(kissfft_kissfft_kissfft_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${kissfft_kissfft_kissfft_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${kissfft_kissfft_kissfft_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${kissfft_kissfft_kissfft_EXE_LINK_FLAGS_RELEASE}>
)
set(kissfft_kissfft_kissfft_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${kissfft_kissfft_kissfft_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${kissfft_kissfft_kissfft_COMPILE_OPTIONS_C_RELEASE}>")