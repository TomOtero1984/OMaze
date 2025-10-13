# Auto-generated CMake for package tflite/toco/logging

add_library(__tflite_toco_logging_conversion_log_util)
  //tflite/toco/logging:conversion_log_util.cc
target_sources(__tflite_toco_logging_conversion_log_util PRIVATE //tflite/toco/logging:conversion_log_util.h)
target_link_libraries(__tflite_toco_logging_conversion_log_util __tflite_toco_logging_toco_conversion_log_proto_cc __tflite_version __tflite_toco_model __tflite_toco_tooling_util __tflite_toco_tflite_export __tflite_toco_tflite_operator _com_google_absl__absl_strings_strings _com_google_absl__absl_time_time _org_tensorflow__tensorflow_core_protos_all_cc)

add_executable(__tflite_toco_logging_conversion_log_util_test //tflite/toco/logging:conversion_log_util_test.cc @org_tensorflow//tensorflow:libtensorflow_framework.so.2 @org_tensorflow//tensorflow:libtensorflow_framework.2.dylib)
add_test(NAME __tflite_toco_logging_conversion_log_util_test COMMAND __tflite_toco_logging_conversion_log_util_test)

# Unsupported rule py_library for //tflite/toco/logging:gen_html

# Unsupported rule py_test for //tflite/toco/logging:gen_html_test

# Unsupported rule filegroup for //tflite/toco/logging:html_template

# Unsupported rule proto_library for //tflite/toco/logging:toco_conversion_log_proto

# Unsupported rule cc_proto_library for //tflite/toco/logging:toco_conversion_log_proto_cc

# Unsupported rule alias for //tflite/toco/logging:toco_conversion_log_proto_cc_headers_only

# Unsupported rule alias for //tflite/toco/logging:toco_conversion_log_proto_cc_impl

# Unsupported rule filegroup for //tflite/toco/logging:toco_conversion_log_proto_proto_srcs

# Unsupported rule py_library for //tflite/toco/logging:toco_conversion_log_proto_py

# Unsupported rule py_proto_library for //tflite/toco/logging:toco_conversion_log_proto_py_proto

