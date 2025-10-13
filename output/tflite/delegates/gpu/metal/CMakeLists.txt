# Auto-generated CMake for package tflite/delegates/gpu/metal

# Unsupported rule ios_unit_test for //tflite/delegates/gpu/metal:ComponentsTests

# Unsupported rule _ios_internal_unit_test_bundle for //tflite/delegates/gpu/metal:ComponentsTests.__internal__.__test_bundle

# Unsupported rule ios_application for //tflite/delegates/gpu/metal:TestApplication

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:TestBinary

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:buffer

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:buffer_convert

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:buffer_test_lib

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:common

# Unsupported rule ios_unit_test for //tflite/delegates/gpu/metal:common_test

# Unsupported rule _ios_internal_unit_test_bundle for //tflite/delegates/gpu/metal:common_test.__internal__.__test_bundle

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:common_test_lib

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:common_tests_lib

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:compute_task

add_library(__tflite_delegates_gpu_metal_compute_task_cc)
  //tflite/delegates/gpu/metal:compute_task.cc
target_sources(__tflite_delegates_gpu_metal_compute_task_cc PRIVATE //tflite/delegates/gpu/metal:compute_task.h)
target_link_libraries(__tflite_delegates_gpu_metal_compute_task_cc __tflite_delegates_gpu_metal_common __tflite_delegates_gpu_metal_metal_arguments __tflite_delegates_gpu_metal_metal_device __tflite_delegates_gpu_metal_metal_spatial_tensor __tflite_delegates_gpu_common_kernel_info __tflite_delegates_gpu_common_precision __tflite_delegates_gpu_common_shape __tflite_delegates_gpu_common_status __tflite_delegates_gpu_common_types __tflite_delegates_gpu_common_util __tflite_delegates_gpu_common_task_gpu_operation __tflite_delegates_gpu_common_task_tuning_type _com_google_absl__absl_strings_strings)

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:gpu_object

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:inference_context

add_library(__tflite_delegates_gpu_metal_inference_context_cc_fbs)
  //tflite/delegates/gpu/metal:inference_context_generated.h
target_sources(__tflite_delegates_gpu_metal_inference_context_cc_fbs PRIVATE //tflite/delegates/gpu/metal:inference_context_generated.h)
target_link_libraries(__tflite_delegates_gpu_metal_inference_context_cc_fbs _flatbuffers___runtime_cc)

# Unsupported rule filegroup for //tflite/delegates/gpu/metal:inference_context_cc_fbs_includes

# Unsupported rule genrule for //tflite/delegates/gpu/metal:inference_context_cc_fbs_srcs

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:metal_arguments

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:metal_device

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:metal_spatial_tensor

# Unsupported rule objc_library for //tflite/delegates/gpu/metal:metal_spatial_tensor_test_lib

