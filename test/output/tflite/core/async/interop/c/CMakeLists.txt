# Auto-generated CMake for package tflite/core/async/interop/c

add_library(__tflite_core_async_interop_c_attribute_map)
  //tflite/core/async/interop/c:attribute_map.cc
target_sources(__tflite_core_async_interop_c_attribute_map PRIVATE //tflite/core/async/interop/c:attribute_map.h)
target_link_libraries(__tflite_core_async_interop_c_attribute_map __tflite_core_async_interop_c_types __tflite_core_async_interop_attribute_map_internal)

add_executable(__tflite_core_async_interop_c_attribute_map_test //tflite/core/async/interop/c:attribute_map_test.cc)
add_test(NAME __tflite_core_async_interop_c_attribute_map_test COMMAND __tflite_core_async_interop_c_attribute_map_test)

add_library(__tflite_core_async_interop_c_constants)
  //tflite/core/async/interop/c:constants.cc
target_sources(__tflite_core_async_interop_c_constants PRIVATE //tflite/core/async/interop/c:constants.h)
target_link_libraries(__tflite_core_async_interop_c_constants __tflite_core_c_c_api_types)

add_library(__tflite_core_async_interop_c_types)
  //tflite/core/async/interop/c:types.cc
target_sources(__tflite_core_async_interop_c_types PRIVATE //tflite/core/async/interop/c:types.h)

add_executable(__tflite_core_async_interop_c_types_test //tflite/core/async/interop/c:types_test.cc)
add_test(NAME __tflite_core_async_interop_c_types_test COMMAND __tflite_core_async_interop_c_types_test)

