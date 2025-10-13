# Auto-generated CMake for package tflite/experimental/shlo/legacy

add_library(__tflite_experimental_shlo_legacy_debug)
  //tflite/experimental/shlo/legacy:src/debug.cc
target_sources(__tflite_experimental_shlo_legacy_debug PRIVATE //tflite/experimental/shlo/legacy:src/debug.h)
target_link_libraries(__tflite_experimental_shlo_legacy_debug __tflite_experimental_shlo_legacy_float __tflite_experimental_shlo_legacy_shlo _com_google_absl__absl_log_log _com_google_absl__absl_log_check _com_google_absl__absl_types_span)

add_library(__tflite_experimental_shlo_legacy_float)
target_sources(__tflite_experimental_shlo_legacy_float PRIVATE //tflite/experimental/shlo/legacy:src/bf16.h //tflite/experimental/shlo/legacy:src/f16.h //tflite/experimental/shlo/legacy:src/has_keyword.h)

add_library(__tflite_experimental_shlo_legacy_shlo)
  //tflite/experimental/shlo/legacy:src/broadcast_in_dim.cc //tflite/experimental/shlo/legacy:src/clamp.cc //tflite/experimental/shlo/legacy:src/compare.cc //tflite/experimental/shlo/legacy:src/concatenate.cc //tflite/experimental/shlo/legacy:src/dispatch.h //tflite/experimental/shlo/legacy:src/elementwise_binary.cc //tflite/experimental/shlo/legacy:src/elementwise_unary.cc //tflite/experimental/shlo/legacy:src/iota.cc //tflite/experimental/shlo/legacy:src/is_finite.cc //tflite/experimental/shlo/legacy:src/select.cc //tflite/experimental/shlo/legacy:src/shlo.cc //tflite/experimental/shlo/legacy:src/uniform_dequantize_quantize.cc
target_sources(__tflite_experimental_shlo_legacy_shlo PRIVATE //tflite/experimental/shlo/legacy:include/shlo.h //tflite/experimental/shlo/legacy:src/storage.h //tflite/experimental/shlo/legacy:src/util.h)
target_link_libraries(__tflite_experimental_shlo_legacy_shlo __tflite_experimental_shlo_legacy_float _com_google_absl__absl_log_log _com_google_absl__absl_status_status _com_google_absl__absl_types_span)

