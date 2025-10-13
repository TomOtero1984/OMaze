# Auto-generated CMake for package tflite/c/jni

add_library(__tflite_c_jni_jni_utils)
  //tflite/c/jni:jni_utils.cc
target_sources(__tflite_c_jni_jni_utils PRIVATE //tflite/c/jni:jni_utils.h)
target_link_libraries(__tflite_c_jni_jni_utils __tflite_java_jni_jni)

add_library(__tflite_c_jni_jni_utils__test_self_contained_c__tflite_c_jni__jni_utils.h_lib)
  //tflite/c/jni:jni_utils__test_self_contained_c__tflite/c/jni__jni_utils.h.c
target_link_libraries(__tflite_c_jni_jni_utils__test_self_contained_c__tflite_c_jni__jni_utils.h_lib __tflite_c_jni_jni_utils)

