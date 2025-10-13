# Auto-generated CMake for package tflite/java

# Unsupported rule java_test for //tflite/java:DataTypeTest

# Unsupported rule java_test for //tflite/java:InterpreterApiNoRuntimeTest

# Unsupported rule java_test for //tflite/java:InterpreterCustomizedAndroidBuildTest

# Unsupported rule java_test for //tflite/java:InterpreterFlexTest

# Unsupported rule java_test for //tflite/java:InterpreterTest

# Unsupported rule java_test for //tflite/java:NativeInterpreterWrapperTest

# Unsupported rule java_test for //tflite/java:NnApiDelegateTest

# Unsupported rule java_test for //tflite/java:TensorFlowLiteInvalidNativeLibTest

# Unsupported rule java_test for //tflite/java:TensorFlowLiteNoNativeLibTest

# Unsupported rule java_test for //tflite/java:TensorFlowLiteTest

# Unsupported rule java_test for //tflite/java:TensorTest

# Unsupported rule bzl_library for //tflite/java:aar_with_jni_bzl

# Unsupported rule filegroup for //tflite/java:java_api_srcs

# Unsupported rule filegroup for //tflite/java:java_experimental_srcs

# Unsupported rule filegroup for //tflite/java:java_runtime_srcs

# Unsupported rule filegroup for //tflite/java:java_srcs

# Unsupported rule filegroup for //tflite/java:java_stable_runtime_srcs

# Unsupported rule filegroup for //tflite/java:java_stable_srcs

# Unsupported rule filegroup for //tflite/java:java_stable_test_srcs

add_executable(__tflite_java_libtensorflowlite_flex_jni.so )
target_link_libraries(__tflite_java_libtensorflowlite_flex_jni.so __tflite_java_tensorflowlite_flex_flex_native __tflite_java_src_main_native_version_script.lds __tflite_java_src_main_native_exported_symbols.lds)

add_executable(__tflite_java_libtensorflowlite_gpu_jni.so )
target_link_libraries(__tflite_java_libtensorflowlite_gpu_jni.so __tflite_delegates_gpu_java_src_main_native_native __tflite_java_gpu_version_script.lds __tflite_java_src_main_native_exported_symbols.lds)

# Unsupported rule alias for //tflite/java:libtensorflowlite_jni

add_executable(__tflite_java_libtensorflowlite_jni.so )
target_link_libraries(__tflite_java_libtensorflowlite_jni.so __tflite_c_c_api __tflite_c_c_api_experimental __tflite_delegates_nnapi_java_src_main_native_native __tflite_java_src_main_native_native __tflite_java_tflite_version_script.lds __tflite_java_src_main_native_exported_symbols.lds)

add_executable(__tflite_java_libtensorflowlite_jni_stable.so )
target_link_libraries(__tflite_java_libtensorflowlite_jni_stable.so __tflite_c_c_api __tflite_delegates_nnapi_java_src_main_native_native __tflite_java_src_main_native_native_stable __tflite_java_tflite_version_script.lds __tflite_java_src_main_native_exported_symbols.lds)

add_library(__tflite_java_native_headers_lib_for_test)
target_sources(__tflite_java_native_headers_lib_for_test PRIVATE //tflite:builtin_ops.h //tflite/c:builtin_op_data.h //tflite/c:c_api.h //tflite/c:c_api_experimental.h //tflite/c:c_api_opaque.h //tflite/c:c_api_types.h //tflite/c:common.h //tflite/converter/core/c:builtin_op_data.h //tflite/converter/core/c:tflite_types.h //tflite/core/async/c:types.h //tflite/core/c:builtin_op_data.h //tflite/core/c:c_api.h //tflite/core/c:c_api_experimental.h //tflite/core/c:c_api_opaque.h //tflite/core/c:c_api_types.h //tflite/core/c:common.h //tflite/core/c:operator.h //tflite/delegates/nnapi:nnapi_delegate_c_api.h)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__builtin_op_data.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__builtin_op_data.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__builtin_op_data.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__builtin_op_data.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__builtin_op_data.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__builtin_op_data.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__c_api.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__c_api.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_experimental.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_experimental.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_experimental.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__c_api_experimental.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_experimental.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__c_api_experimental.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_opaque.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_opaque.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_opaque.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__c_api_opaque.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_opaque.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__c_api_opaque.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_types.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_types.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_types.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__c_api_types.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__c_api_types.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__c_api_types.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__common.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__common.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__common.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__common.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/c__common.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_c__common.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/converter/core/c__builtin_op_data.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/converter/core/c__builtin_op_data.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/converter/core/c__builtin_op_data.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_converter_core_c__builtin_op_data.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/converter/core/c__builtin_op_data.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_converter_core_c__builtin_op_data.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/converter/core/c__tflite_types.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/converter/core/c__tflite_types.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/converter/core/c__tflite_types.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_converter_core_c__tflite_types.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/converter/core/c__tflite_types.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_converter_core_c__tflite_types.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/async/c__types.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/async/c__types.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/async/c__types.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_async_c__types.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/async/c__types.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_async_c__types.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__builtin_op_data.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__builtin_op_data.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__builtin_op_data.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__builtin_op_data.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__builtin_op_data.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__builtin_op_data.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__c_api.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__c_api.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_experimental.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_experimental.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_experimental.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__c_api_experimental.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_experimental.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__c_api_experimental.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_opaque.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_opaque.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_opaque.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__c_api_opaque.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_opaque.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__c_api_opaque.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_types.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_types.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_types.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__c_api_types.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__c_api_types.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__c_api_types.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__common.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__common.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__common.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__common.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__common.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__common.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__operator.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__operator.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__operator.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__operator.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/core/c__operator.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_core_c__operator.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/delegates/nnapi__nnapi_delegate_c_api.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/delegates/nnapi__nnapi_delegate_c_api.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/delegates/nnapi__nnapi_delegate_c_api.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_delegates_nnapi__nnapi_delegate_c_api.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite/delegates/nnapi__nnapi_delegate_c_api.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite_delegates_nnapi__nnapi_delegate_c_api.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule _empty_test for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite__builtin_ops.h_build_test

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite__builtin_ops.h_build_test_0__deps

# Unsupported rule genrule for //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite__builtin_ops.h_gen

add_library(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite__builtin_ops.h_lib)
  //tflite/java:native_headers_lib_for_test__test_self_contained_c__tflite__builtin_ops.h.c
target_link_libraries(__tflite_java_native_headers_lib_for_test__test_self_contained_c__tflite__builtin_ops.h_lib __tflite_java_native_headers_lib_for_test)

# Unsupported rule test_suite for //tflite/java:native_headers_lib_for_test_self_contained_c_build_tests

# Unsupported rule filegroup for //tflite/java:portable_flex_tests

# Unsupported rule filegroup for //tflite/java:portable_flex_with_custom_ops_tests

# Unsupported rule filegroup for //tflite/java:portable_gpu_tests

# Unsupported rule filegroup for //tflite/java:portable_test_utils

# Unsupported rule filegroup for //tflite/java:portable_tests

# Unsupported rule genrule for //tflite/java:tensorflow-lite

# Unsupported rule genrule for //tflite/java:tensorflow-lite-api

# Unsupported rule genrule for //tflite/java:tensorflow-lite-gpu

# Unsupported rule genrule for //tflite/java:tensorflow-lite-gpu-api

# Unsupported rule genrule for //tflite/java:tensorflow-lite-gpu_binary_manifest_generator

# Unsupported rule android_binary for //tflite/java:tensorflow-lite-gpu_dummy_app_for_so

# Unsupported rule genrule for //tflite/java:tensorflow-lite-select-tf-ops

# Unsupported rule genrule for //tflite/java:tensorflow-lite-select-tf-ops_binary_manifest_generator

# Unsupported rule android_binary for //tflite/java:tensorflow-lite-select-tf-ops_dummy_app_for_so

# Unsupported rule genrule for //tflite/java:tensorflow-lite-stable

# Unsupported rule genrule for //tflite/java:tensorflow-lite-stable_binary_manifest_generator

# Unsupported rule android_binary for //tflite/java:tensorflow-lite-stable_dummy_app_for_so

# Unsupported rule genrule for //tflite/java:tensorflow-lite_binary_manifest_generator

# Unsupported rule android_binary for //tflite/java:tensorflow-lite_dummy_app_for_so

# Unsupported rule android_library for //tflite/java:tensorflowlite

# Unsupported rule android_library for //tflite/java:tensorflowlite_api

# Unsupported rule java_library for //tflite/java:tensorflowlite_api_javalib

# Unsupported rule android_library for //tflite/java:tensorflowlite_flex

add_library(__tflite_java_tensorflowlite_flex_flex_delegate)
target_sources(__tflite_java_tensorflowlite_flex_flex_delegate PRIVATE //tflite/delegates/flex:delegate.h)
target_link_libraries(__tflite_java_tensorflowlite_flex_flex_delegate __tflite_delegates_flex_delegate_data __tflite_delegates_flex_delegate_only_runtime __tflite_delegates_utils_simple_delegate _org_tensorflow__tensorflow_core_portable_tensorflow_lib _org_tensorflow__tensorflow_core_tensorflow __tflite_core_c_private_common __tflite_delegates_flex_delegate_symbol)

add_library(__tflite_java_tensorflowlite_flex_flex_native)
  //tflite/testing:init_tensorflow.h //tflite/testing:init_tensorflow.cc //tflite/delegates/flex/java/src/main/native:flex_delegate_jni.cc
target_link_libraries(__tflite_java_tensorflowlite_flex_flex_native __tflite_java_tensorflowlite_flex_flex_delegate __tflite_java_jni_jni __tflite_delegates_utils_simple_delegate _org_tensorflow__tensorflow_core_lib)

# Unsupported rule java_library for //tflite/java:tensorflowlite_flex_javalib

add_library(__tflite_java_tensorflowlite_flex_native)
  //tflite/java:libtensorflowlite_flex_jni.so

# Unsupported rule alias for //tflite/java:tensorflowlite_gpu

# Unsupported rule android_library for //tflite/java:tensorflowlite_gpu_api

# Unsupported rule android_library for //tflite/java:tensorflowlite_gpu_impl

# Unsupported rule android_library for //tflite/java:tensorflowlite_gpu_impl_java

add_library(__tflite_java_tensorflowlite_gpu_native)
  //tflite/java:libtensorflowlite_gpu_jni.so

# Unsupported rule android_library for //tflite/java:tensorflowlite_java

# Unsupported rule android_library for //tflite/java:tensorflowlite_java_stable

# Unsupported rule java_library for //tflite/java:tensorflowlite_javalib

# Unsupported rule java_library for //tflite/java:tensorflowlite_javalib_experimental

# Unsupported rule java_library for //tflite/java:tensorflowlite_javalib_stable

add_library(__tflite_java_tensorflowlite_native)
  //tflite/java:libtensorflowlite_jni.so

add_library(__tflite_java_tensorflowlite_native_stable)
  //tflite/java:libtensorflowlite_jni_stable.so

# Unsupported rule android_library for //tflite/java:tensorflowlite_stable

add_library(__tflite_java_tensorflowlite_test_native)
  //tflite/java/src/test/native:libtensorflowlite_test_jni.so

# Unsupported rule java_library for //tflite/java:tensorflowlitelib

# Unsupported rule java_library for //tflite/java:tensorflowlitelib_flex

# Unsupported rule java_library for //tflite/java:tensorflowlitelib_stable

# Unsupported rule java_library for //tflite/java:test_init

# Unsupported rule filegroup for //tflite/java:tflite_acceleration_headers

# Unsupported rule filegroup for //tflite/java:tflite_headers

