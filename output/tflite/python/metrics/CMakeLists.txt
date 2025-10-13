# Auto-generated CMake for package tflite/python/metrics

# Unsupported rule py_library for //tflite/python/metrics:_pywrap_tensorflow_lite_metrics_wrapper

add_executable(__tflite_python_metrics__pywrap_tensorflow_lite_metrics_wrapper.so //tflite/python/metrics:wrapper/metrics_wrapper_pybind11.cc //tflite/python/metrics:wrapper/metrics_wrapper.h)
target_link_libraries(__tflite_python_metrics__pywrap_tensorflow_lite_metrics_wrapper.so __tflite_python_metrics_metrics_wrapper_lib _com_google_protobuf___protobuf _local_xla__third_party_python_runtime_headers _org_tensorflow__tensorflow_python_lib_core_pybind11_lib _pybind11___pybind11 __tflite_python_metrics__pywrap_tensorflow_lite_metrics_wrapper_exported_symbols.lds __tflite_python_metrics__pywrap_tensorflow_lite_metrics_wrapper_version_script.lds)

# Unsupported rule genrule for //tflite/python/metrics:_pywrap_tensorflow_lite_metrics_wrapper_exported_symbols

# Unsupported rule alias for //tflite/python/metrics:_pywrap_tensorflow_lite_metrics_wrapper_filegroup

# Unsupported rule genrule for //tflite/python/metrics:_pywrap_tensorflow_lite_metrics_wrapper_pyd_copy

# Unsupported rule genrule for //tflite/python/metrics:_pywrap_tensorflow_lite_metrics_wrapper_version_script

# Unsupported rule py_library for //tflite/python/metrics:metrics

# Unsupported rule py_library for //tflite/python/metrics:metrics_interface

# Unsupported rule genrule for //tflite/python/metrics:metrics_py_gen

# Unsupported rule py_test for //tflite/python/metrics:metrics_test

# Unsupported rule py_library for //tflite/python/metrics:metrics_wrapper

add_library(__tflite_python_metrics_metrics_wrapper_lib)
  //tflite/python/metrics:wrapper/metrics_wrapper_portable.cc
target_sources(__tflite_python_metrics_metrics_wrapper_lib PRIVATE //tflite/python/metrics:wrapper/metrics_wrapper.h)
target_link_libraries(__tflite_python_metrics_metrics_wrapper_lib _local_xla__third_party_python_runtime_headers)

# Unsupported rule py_test for //tflite/python/metrics:metrics_wrapper_test

