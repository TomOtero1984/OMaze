########### AGGREGATED COMPONENTS AND DEPENDENCIES FOR THE MULTI CONFIG #####################
#############################################################################################

list(APPEND minizip-ng_COMPONENT_NAMES MINIZIP::minizip)
list(REMOVE_DUPLICATES minizip-ng_COMPONENT_NAMES)
if(DEFINED minizip-ng_FIND_DEPENDENCY_NAMES)
  list(APPEND minizip-ng_FIND_DEPENDENCY_NAMES BZip2 LibLZMA zstd OpenSSL Iconv)
  list(REMOVE_DUPLICATES minizip-ng_FIND_DEPENDENCY_NAMES)
else()
  set(minizip-ng_FIND_DEPENDENCY_NAMES BZip2 LibLZMA zstd OpenSSL Iconv)
endif()
set(BZip2_FIND_MODE "NO_MODULE")
set(LibLZMA_FIND_MODE "NO_MODULE")
set(zstd_FIND_MODE "NO_MODULE")
set(OpenSSL_FIND_MODE "NO_MODULE")
set(Iconv_FIND_MODE "NO_MODULE")

########### VARIABLES #######################################################################
#############################################################################################
set(minizip-ng_PACKAGE_FOLDER_RELEASE "/Users/totero/.conan2/p/b/miniz96063e59d9874/p")
set(minizip-ng_BUILD_MODULES_PATHS_RELEASE )


set(minizip-ng_INCLUDE_DIRS_RELEASE "${minizip-ng_PACKAGE_FOLDER_RELEASE}/include"
			"${minizip-ng_PACKAGE_FOLDER_RELEASE}/include/minizip-ng")
set(minizip-ng_RES_DIRS_RELEASE )
set(minizip-ng_DEFINITIONS_RELEASE "-DHAVE_LZMA"
			"-DHAVE_LIBCOMP"
			"-DHAVE_BZIP2")
set(minizip-ng_SHARED_LINK_FLAGS_RELEASE )
set(minizip-ng_EXE_LINK_FLAGS_RELEASE )
set(minizip-ng_OBJECTS_RELEASE )
set(minizip-ng_COMPILE_DEFINITIONS_RELEASE "HAVE_LZMA"
			"HAVE_LIBCOMP"
			"HAVE_BZIP2")
set(minizip-ng_COMPILE_OPTIONS_C_RELEASE )
set(minizip-ng_COMPILE_OPTIONS_CXX_RELEASE )
set(minizip-ng_LIB_DIRS_RELEASE "${minizip-ng_PACKAGE_FOLDER_RELEASE}/lib")
set(minizip-ng_BIN_DIRS_RELEASE )
set(minizip-ng_LIBRARY_TYPE_RELEASE STATIC)
set(minizip-ng_IS_HOST_WINDOWS_RELEASE 0)
set(minizip-ng_LIBS_RELEASE minizip-ng)
set(minizip-ng_SYSTEM_LIBS_RELEASE compression)
set(minizip-ng_FRAMEWORK_DIRS_RELEASE )
set(minizip-ng_FRAMEWORKS_RELEASE )
set(minizip-ng_BUILD_DIRS_RELEASE )
set(minizip-ng_NO_SONAME_MODE_RELEASE FALSE)


# COMPOUND VARIABLES
set(minizip-ng_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${minizip-ng_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${minizip-ng_COMPILE_OPTIONS_C_RELEASE}>")
set(minizip-ng_LINKER_FLAGS_RELEASE
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${minizip-ng_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${minizip-ng_SHARED_LINK_FLAGS_RELEASE}>"
    "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${minizip-ng_EXE_LINK_FLAGS_RELEASE}>")


set(minizip-ng_COMPONENTS_RELEASE MINIZIP::minizip)
########### COMPONENT MINIZIP::minizip VARIABLES ############################################

set(minizip-ng_MINIZIP_minizip_INCLUDE_DIRS_RELEASE "${minizip-ng_PACKAGE_FOLDER_RELEASE}/include"
			"${minizip-ng_PACKAGE_FOLDER_RELEASE}/include/minizip-ng")
set(minizip-ng_MINIZIP_minizip_LIB_DIRS_RELEASE "${minizip-ng_PACKAGE_FOLDER_RELEASE}/lib")
set(minizip-ng_MINIZIP_minizip_BIN_DIRS_RELEASE )
set(minizip-ng_MINIZIP_minizip_LIBRARY_TYPE_RELEASE STATIC)
set(minizip-ng_MINIZIP_minizip_IS_HOST_WINDOWS_RELEASE 0)
set(minizip-ng_MINIZIP_minizip_RES_DIRS_RELEASE )
set(minizip-ng_MINIZIP_minizip_DEFINITIONS_RELEASE "-DHAVE_LZMA"
			"-DHAVE_LIBCOMP"
			"-DHAVE_BZIP2")
set(minizip-ng_MINIZIP_minizip_OBJECTS_RELEASE )
set(minizip-ng_MINIZIP_minizip_COMPILE_DEFINITIONS_RELEASE "HAVE_LZMA"
			"HAVE_LIBCOMP"
			"HAVE_BZIP2")
set(minizip-ng_MINIZIP_minizip_COMPILE_OPTIONS_C_RELEASE "")
set(minizip-ng_MINIZIP_minizip_COMPILE_OPTIONS_CXX_RELEASE "")
set(minizip-ng_MINIZIP_minizip_LIBS_RELEASE minizip-ng)
set(minizip-ng_MINIZIP_minizip_SYSTEM_LIBS_RELEASE compression)
set(minizip-ng_MINIZIP_minizip_FRAMEWORK_DIRS_RELEASE )
set(minizip-ng_MINIZIP_minizip_FRAMEWORKS_RELEASE )
set(minizip-ng_MINIZIP_minizip_DEPENDENCIES_RELEASE BZip2::BZip2 LibLZMA::LibLZMA zstd::libzstd_static openssl::openssl Iconv::Iconv)
set(minizip-ng_MINIZIP_minizip_SHARED_LINK_FLAGS_RELEASE )
set(minizip-ng_MINIZIP_minizip_EXE_LINK_FLAGS_RELEASE )
set(minizip-ng_MINIZIP_minizip_NO_SONAME_MODE_RELEASE FALSE)

# COMPOUND VARIABLES
set(minizip-ng_MINIZIP_minizip_LINKER_FLAGS_RELEASE
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:${minizip-ng_MINIZIP_minizip_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:${minizip-ng_MINIZIP_minizip_SHARED_LINK_FLAGS_RELEASE}>
        $<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:${minizip-ng_MINIZIP_minizip_EXE_LINK_FLAGS_RELEASE}>
)
set(minizip-ng_MINIZIP_minizip_COMPILE_OPTIONS_RELEASE
    "$<$<COMPILE_LANGUAGE:CXX>:${minizip-ng_MINIZIP_minizip_COMPILE_OPTIONS_CXX_RELEASE}>"
    "$<$<COMPILE_LANGUAGE:C>:${minizip-ng_MINIZIP_minizip_COMPILE_OPTIONS_C_RELEASE}>")