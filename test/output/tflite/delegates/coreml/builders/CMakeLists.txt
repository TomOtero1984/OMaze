# Auto-generated CMake for package tflite/delegates/coreml/builders

add_library(__tflite_delegates_coreml_builders_op_builder)
  //tflite/delegates/coreml/builders:activation_layer_builder.cc //tflite/delegates/coreml/builders:add_op_builder.cc //tflite/delegates/coreml/builders:concatenation_op_builder.cc //tflite/delegates/coreml/builders:convolution_op_builder.cc //tflite/delegates/coreml/builders:dummy_op_builder.cc //tflite/delegates/coreml/builders:fully_connected_op_builder.cc //tflite/delegates/coreml/builders:hardswish_op_builder.cc //tflite/delegates/coreml/builders:mul_op_builder.cc //tflite/delegates/coreml/builders:op_builder.cc //tflite/delegates/coreml/builders:pad_op_builder.cc //tflite/delegates/coreml/builders:pooling_layer_builder.cc //tflite/delegates/coreml/builders:reshape_op_builder.cc //tflite/delegates/coreml/builders:resize_bilinear_op_builder.cc //tflite/delegates/coreml/builders:softmax_op_builder.cc //tflite/delegates/coreml/builders:threshold_layer_builder.cc
target_sources(__tflite_delegates_coreml_builders_op_builder PRIVATE //tflite/delegates/coreml/builders:activation_layer_builder.h //tflite/delegates/coreml/builders:add_op_builder.h //tflite/delegates/coreml/builders:concatenation_op_builder.h //tflite/delegates/coreml/builders:convolution_op_builder.h //tflite/delegates/coreml/builders:dummy_op_builder.h //tflite/delegates/coreml/builders:fully_connected_op_builder.h //tflite/delegates/coreml/builders:hardswish_op_builder.h //tflite/delegates/coreml/builders:mul_op_builder.h //tflite/delegates/coreml/builders:op_builder.h //tflite/delegates/coreml/builders:pad_op_builder.h //tflite/delegates/coreml/builders:pooling_layer_builder.h //tflite/delegates/coreml/builders:reshape_op_builder.h //tflite/delegates/coreml/builders:resize_bilinear_op_builder.h //tflite/delegates/coreml/builders:softmax_op_builder.h //tflite/delegates/coreml/builders:threshold_layer_builder.h)
target_link_libraries(__tflite_delegates_coreml_builders_op_builder __tflite_delegates_coreml_builders_op_factory __tflite_delegates_coreml_builders_op_validator __tflite_delegates_coreml_builders_util __tflite_kernel_api __tflite_core_c_common __tflite_kernels_kernel_util __tflite_kernels_internal_optimized_base __tflite_kernels_internal_tensor __tflite_kernels_internal_types _com_google_absl__absl_strings_strings _com_google_absl__absl_strings_str_format _com_google_protobuf___protobuf_headers _coremltools___mlmodel_cc_proto)

add_library(__tflite_delegates_coreml_builders_op_factory)
target_sources(__tflite_delegates_coreml_builders_op_factory PRIVATE //tflite/delegates/coreml/builders:op_factory.h)
target_link_libraries(__tflite_delegates_coreml_builders_op_factory __tflite_core_c_common)

add_library(__tflite_delegates_coreml_builders_op_validator)
target_sources(__tflite_delegates_coreml_builders_op_validator PRIVATE //tflite/delegates/coreml/builders:op_validator.h)
target_link_libraries(__tflite_delegates_coreml_builders_op_validator __tflite_core_c_common)

add_library(__tflite_delegates_coreml_builders_util)
  //tflite/delegates/coreml/builders:util.cc
target_sources(__tflite_delegates_coreml_builders_util PRIVATE //tflite/delegates/coreml/builders:util.h)
target_link_libraries(__tflite_delegates_coreml_builders_util __tflite_delegates_coreml_builders_op_validator __tflite_core_c_common __tflite_kernels_kernel_util __tflite_kernels_internal_tensor _FP16___FP16)

add_executable(__tflite_delegates_coreml_builders_util_test //tflite/delegates/coreml/builders:util_test.cc)
add_test(NAME __tflite_delegates_coreml_builders_util_test COMMAND __tflite_delegates_coreml_builders_util_test)

