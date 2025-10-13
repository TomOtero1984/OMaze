# Auto-generated CMake for package tflite/kernels

add_library(__tflite_kernels_acceleration_test_util)
  //tflite/kernels:acceleration_test_util.cc
target_sources(__tflite_kernels_acceleration_test_util PRIVATE //tflite/kernels:acceleration_test_util.h)
target_link_libraries(__tflite_kernels_acceleration_test_util _com_google_absl__absl_types_optional _com_google_googletest___gtest)

add_library(__tflite_kernels_acceleration_test_util_internal)
  //tflite/kernels:acceleration_test_util_internal.cc
target_sources(__tflite_kernels_acceleration_test_util_internal PRIVATE //tflite/kernels:acceleration_test_util_internal.h)
target_link_libraries(__tflite_kernels_acceleration_test_util_internal _com_google_absl__absl_types_optional _com_googlesource_code_re2___re2)

add_executable(__tflite_kernels_acceleration_test_util_internal_test //tflite/kernels:acceleration_test_util_internal_test.cc)
add_test(NAME __tflite_kernels_acceleration_test_util_internal_test COMMAND __tflite_kernels_acceleration_test_util_internal_test)

add_executable(__tflite_kernels_acceleration_test_util_internal_test_shared_lib )
target_link_libraries(__tflite_kernels_acceleration_test_util_internal_test_shared_lib __tflite_kernels_acceleration_test_util_internal)

add_executable(__tflite_kernels_acceleration_test_util_test_shared_lib )
target_link_libraries(__tflite_kernels_acceleration_test_util_test_shared_lib __tflite_kernels_acceleration_test_util)

add_executable(__tflite_kernels_activations_test //tflite/kernels:activations_test.cc)
add_test(NAME __tflite_kernels_activations_test COMMAND __tflite_kernels_activations_test)

add_executable(__tflite_kernels_add_n_test //tflite/kernels:add_n_test.cc)
add_test(NAME __tflite_kernels_add_n_test COMMAND __tflite_kernels_add_n_test)

add_library(__tflite_kernels_add_n_test_common)
target_sources(__tflite_kernels_add_n_test_common PRIVATE //tflite/kernels:add_n_test_common.h)
target_link_libraries(__tflite_kernels_add_n_test_common __tflite_kernels_test_util)

add_executable(__tflite_kernels_add_n_test_common_test_shared_lib )
target_link_libraries(__tflite_kernels_add_n_test_common_test_shared_lib __tflite_kernels_add_n_test_common)

add_executable(__tflite_kernels_add_test //tflite/kernels:add_test.cc)
add_test(NAME __tflite_kernels_add_test COMMAND __tflite_kernels_add_test)

add_executable(__tflite_kernels_arg_min_max_test //tflite/kernels:arg_min_max_test.cc)
add_test(NAME __tflite_kernels_arg_min_max_test COMMAND __tflite_kernels_arg_min_max_test)

add_executable(__tflite_kernels_atan2_custom_test //tflite/kernels:atan2_custom_test.cc)
add_test(NAME __tflite_kernels_atan2_custom_test COMMAND __tflite_kernels_atan2_custom_test)

add_executable(__tflite_kernels_atan2_test //tflite/kernels:atan2_test.cc)
add_test(NAME __tflite_kernels_atan2_test COMMAND __tflite_kernels_atan2_test)

add_executable(__tflite_kernels_audio_spectrogram_test //tflite/kernels:audio_spectrogram_test.cc)
add_test(NAME __tflite_kernels_audio_spectrogram_test COMMAND __tflite_kernels_audio_spectrogram_test)

add_executable(__tflite_kernels_basic_rnn_test //tflite/kernels:basic_rnn_test.cc)
add_test(NAME __tflite_kernels_basic_rnn_test COMMAND __tflite_kernels_basic_rnn_test)

add_executable(__tflite_kernels_batch_matmul_test //tflite/kernels:batch_matmul_test.cc)
add_test(NAME __tflite_kernels_batch_matmul_test COMMAND __tflite_kernels_batch_matmul_test)

add_executable(__tflite_kernels_batch_to_space_nd_test //tflite/kernels:batch_to_space_nd_test.cc)
add_test(NAME __tflite_kernels_batch_to_space_nd_test COMMAND __tflite_kernels_batch_to_space_nd_test)

add_executable(__tflite_kernels_bidirectional_sequence_lstm_test //tflite/kernels:bidirectional_sequence_lstm_test.cc)
add_test(NAME __tflite_kernels_bidirectional_sequence_lstm_test COMMAND __tflite_kernels_bidirectional_sequence_lstm_test)

add_executable(__tflite_kernels_bidirectional_sequence_rnn_test //tflite/kernels:bidirectional_sequence_rnn_test.cc)
add_test(NAME __tflite_kernels_bidirectional_sequence_rnn_test COMMAND __tflite_kernels_bidirectional_sequence_rnn_test)

add_executable(__tflite_kernels_bitcast_test //tflite/kernels:bitcast_test.cc)
add_test(NAME __tflite_kernels_bitcast_test COMMAND __tflite_kernels_bitcast_test)

add_executable(__tflite_kernels_bitwise_xor_test //tflite/kernels:bitwise_xor_test.cc)
add_test(NAME __tflite_kernels_bitwise_xor_test COMMAND __tflite_kernels_bitwise_xor_test)

add_executable(__tflite_kernels_broadcast_args_test //tflite/kernels:broadcast_args_test.cc)
add_test(NAME __tflite_kernels_broadcast_args_test COMMAND __tflite_kernels_broadcast_args_test)

add_executable(__tflite_kernels_broadcast_to_test //tflite/kernels:broadcast_to_test.cc)
add_test(NAME __tflite_kernels_broadcast_to_test COMMAND __tflite_kernels_broadcast_to_test)

add_executable(__tflite_kernels_bucketize_test //tflite/kernels:bucketize_test.cc)
add_test(NAME __tflite_kernels_bucketize_test COMMAND __tflite_kernels_bucketize_test)

add_library(__tflite_kernels_builtin_op_kernels)
  //tflite/kernels:activations.cc //tflite/kernels:add.cc //tflite/kernels:add_n.cc //tflite/kernels:arg_min_max.cc //tflite/kernels:atan2.cc //tflite/kernels:audio_spectrogram.cc //tflite/kernels:basic_rnn.cc //tflite/kernels:batch_matmul.cc //tflite/kernels:batch_to_space_nd.cc //tflite/kernels:bidirectional_sequence_lstm.cc //tflite/kernels:bidirectional_sequence_rnn.cc //tflite/kernels:bitcast.cc //tflite/kernels:bitwise_xor.cc //tflite/kernels:broadcast_args.cc //tflite/kernels:broadcast_to.cc //tflite/kernels:bucketize.cc //tflite/kernels:call_once.cc //tflite/kernels:cast.cc //tflite/kernels:ceil.cc //tflite/kernels:comparisons.cc //tflite/kernels:complex_support.cc //tflite/kernels:concatenation.cc //tflite/kernels:conv.cc //tflite/kernels:conv3d.cc //tflite/kernels:conv3d_transpose.cc //tflite/kernels:cumsum.cc //tflite/kernels:densify.cc //tflite/kernels:depth_to_space.cc //tflite/kernels:depthwise_conv.cc //tflite/kernels:dequantize.cc //tflite/kernels:detection_postprocess.cc //tflite/kernels:dilate.cc //tflite/kernels:div.cc //tflite/kernels:dynamic_update_slice.cc //tflite/kernels:elementwise.cc //tflite/kernels:embedding_lookup.cc //tflite/kernels:embedding_lookup_sparse.cc //tflite/kernels:exp.cc //tflite/kernels:expand_dims.cc //tflite/kernels:fake_quant.cc //tflite/kernels:fill.cc //tflite/kernels:floor.cc //tflite/kernels:floor_div.cc //tflite/kernels:floor_mod.cc //tflite/kernels:fully_connected.cc //tflite/kernels:gather.cc //tflite/kernels:gather_nd.cc //tflite/kernels:hadamard_rotation.cc //tflite/kernels:hashtable.cc //tflite/kernels:hashtable_find.cc //tflite/kernels:hashtable_import.cc //tflite/kernels:hashtable_lookup.cc //tflite/kernels:hashtable_size.cc //tflite/kernels:if.cc //tflite/kernels:l2norm.cc //tflite/kernels:local_response_norm.cc //tflite/kernels:logical.cc //tflite/kernels:lsh_projection.cc //tflite/kernels:lstm.cc //tflite/kernels:matrix_diag.cc //tflite/kernels:matrix_set_diag.cc //tflite/kernels:maximum_minimum.cc //tflite/kernels:mfcc.cc //tflite/kernels:mirror_pad.cc //tflite/kernels:mul.cc //tflite/kernels:neg.cc //tflite/kernels:non_max_suppression.cc //tflite/kernels:numeric_verify.cc //tflite/kernels:one_hot.cc //tflite/kernels:pack.cc //tflite/kernels:pad.cc //tflite/kernels:pooling.cc //tflite/kernels:pow.cc //tflite/kernels:quantize.cc //tflite/kernels:random_ops.cc //tflite/kernels:range.cc //tflite/kernels:rank.cc //tflite/kernels:reduce.cc //tflite/kernels:reshape.cc //tflite/kernels:resize_bilinear.cc //tflite/kernels:resize_nearest_neighbor.cc //tflite/kernels:reverse.cc //tflite/kernels:reverse_sequence.cc //tflite/kernels:right_shift.cc //tflite/kernels:round.cc //tflite/kernels:scatter_nd.cc //tflite/kernels:segment_sum.cc //tflite/kernels:select.cc //tflite/kernels:shape.cc //tflite/kernels:stablehlo_gather.cc //tflite/kernels:stablehlo_add.cc //tflite/kernels:stablehlo_and.cc //tflite/kernels:stablehlo_composite.cc //tflite/kernels:stablehlo_case.cc //tflite/kernels:stablehlo_multiply.cc //tflite/kernels:stablehlo_pad.cc //tflite/kernels:stablehlo_reduce_window.cc //tflite/kernels:stablehlo_min_max.cc //tflite/kernels:stablehlo_scatter.cc //tflite/kernels:stablehlo_shift_left.cc //tflite/kernels:sign.cc //tflite/kernels:skip_gram.cc //tflite/kernels:slice.cc //tflite/kernels:space_to_batch_nd.cc //tflite/kernels:space_to_depth.cc //tflite/kernels:sparse_to_dense.cc //tflite/kernels:split.cc //tflite/kernels:split_v.cc //tflite/kernels:squared_difference.cc //tflite/kernels:squeeze.cc //tflite/kernels:strided_slice.cc //tflite/kernels:sub.cc //tflite/kernels:svdf.cc //tflite/kernels:tile.cc //tflite/kernels:topk_v2.cc //tflite/kernels:transpose.cc //tflite/kernels:transpose_conv.cc //tflite/kernels:unidirectional_sequence_lstm.cc //tflite/kernels:unidirectional_sequence_rnn.cc //tflite/kernels:unique.cc //tflite/kernels:unpack.cc //tflite/kernels:unsorted_segment.cc //tflite/kernels:where.cc //tflite/kernels:while.cc //tflite/kernels:zeros_like.cc //tflite/kernels:rfft2d.cc //tflite/kernels:rng_bit_generator.cc
target_sources(__tflite_kernels_builtin_op_kernels PRIVATE //tflite/kernels:dequantize.h)
target_link_libraries(__tflite_kernels_builtin_op_kernels __tflite_kernels_cpu_backend_context __tflite_kernels_cpu_backend_gemm __tflite_kernels_cpu_backend_threadpool __tflite_kernels_kernel_util __tflite_kernels_rng_util __tflite_kernels_tensor_slice_util __tflite_kernels_lstm_eval __tflite_kernels_lstm_shared __tflite_kernels_op_macros __tflite_kernels_padding __tflite_kernels_stablehlo_elementwise __tflite_kernels_control_flow_common _eigen_archive___eigen3 _flatbuffers___flatbuffers __tflite_framework_stable __tflite_minimal_logging __tflite_string_util __tflite_tflite_kernel_use_xnnpack_optional __tflite_core_subgraph __tflite_util __tflite_core_c_common __tflite_kernels_internal_audio_utils __tflite_kernels_internal_common __tflite_kernels_internal_compatibility __tflite_kernels_internal_cpu_check __tflite_kernels_internal_kernel_utils __tflite_kernels_internal_optimized_base __tflite_kernels_internal_portable_tensor_utils __tflite_kernels_internal_quantization_util __tflite_kernels_internal_reference_base __tflite_kernels_internal_strided_slice_logic __tflite_kernels_internal_tensor __tflite_kernels_internal_tensor_utils __tflite_kernels_internal_types __tflite_kernels_eigen_support __tflite_kernels_internal_optimized_eigen _cpuinfo___cpuinfo_with_unstripped_include_path __tflite_kernels_variable_op_kernels _FP16___FP16 _fft2d___fft2d _ruy__ruy_profiler_instrumentation __tflite_c_c_api_types __tflite_c_common __tflite_array __tflite_builtin_ops __tflite_cc_api_stable _local_xla__xla_tsl_lib_random_philox_random _local_xla__xla_tsl_lib_random_random_distributions_utils __tflite_core_c_c_api_types __tflite_experimental_resource_resource __tflite_kernels_internal_cppmath __tflite_string _farmhash_archive___farmhash _org_tensorflow__third_party_fft2d_fft2d_headers)

add_executable(__tflite_kernels_builtin_op_kernels_test_shared_lib )
target_link_libraries(__tflite_kernels_builtin_op_kernels_test_shared_lib __tflite_kernels_builtin_op_kernels)

add_library(__tflite_kernels_builtin_ops)
target_sources(__tflite_kernels_builtin_ops PRIVATE //tflite/kernels:builtin_op_kernels.h //tflite/kernels:fully_connected.h //tflite/kernels:register.h)
target_link_libraries(__tflite_kernels_builtin_ops __tflite_kernels_builtin_op_kernels __tflite_kernels_builtin_ops_list __tflite_mutable_op_resolver __tflite_tflite_with_xnnpack_optional __tflite_core_c_common __tflite_core_kernels_builtin_ops __tflite_schema_schema_fbs __tflite_cc_api_stable)

add_library(__tflite_kernels_builtin_ops_all_linked)
target_sources(__tflite_kernels_builtin_ops_all_linked PRIVATE //tflite/kernels:builtin_op_kernels.h //tflite/kernels:fully_connected.h //tflite/kernels:register.h)
target_link_libraries(__tflite_kernels_builtin_ops_all_linked __tflite_kernels_builtin_op_kernels __tflite_kernels_builtin_ops_list __tflite_tflite_with_xnnpack_optional __tflite_core_c_common __tflite_core_kernels_builtin_ops_all_linked __tflite_schema_schema_fbs __tflite_framework_stable)

add_executable(__tflite_kernels_builtin_ops_all_linked_test_shared_lib )
target_link_libraries(__tflite_kernels_builtin_ops_all_linked_test_shared_lib __tflite_kernels_builtin_ops_all_linked)

add_library(__tflite_kernels_builtin_ops_list)

add_executable(__tflite_kernels_builtin_ops_list_test_shared_lib )
target_link_libraries(__tflite_kernels_builtin_ops_list_test_shared_lib __tflite_kernels_builtin_ops_list)

add_library(__tflite_kernels_builtin_ops_opaque_delegate)
target_sources(__tflite_kernels_builtin_ops_opaque_delegate PRIVATE //tflite/kernels:builtin_op_kernels.h //tflite/kernels:fully_connected.h //tflite/kernels:register.h)
target_link_libraries(__tflite_kernels_builtin_ops_opaque_delegate __tflite_kernels_builtin_op_kernels __tflite_kernels_builtin_ops_list __tflite_mutable_op_resolver __tflite_tflite_with_xnnpack_optional __tflite_core_c_common __tflite_core_kernels_builtin_ops __tflite_schema_schema_fbs __tflite_cc_api_stable_opaque_delegate __tflite_core_shims_tflite_use_opaque_delegate)

add_executable(__tflite_kernels_builtin_ops_opaque_delegate_test_shared_lib )
target_link_libraries(__tflite_kernels_builtin_ops_opaque_delegate_test_shared_lib __tflite_kernels_builtin_ops_opaque_delegate)

add_executable(__tflite_kernels_builtin_ops_test_shared_lib )
target_link_libraries(__tflite_kernels_builtin_ops_test_shared_lib __tflite_kernels_builtin_ops)

add_executable(__tflite_kernels_call_once_test //tflite/kernels:call_once_test.cc)
add_test(NAME __tflite_kernels_call_once_test COMMAND __tflite_kernels_call_once_test)

add_executable(__tflite_kernels_cast_test //tflite/kernels:cast_test.cc)
add_test(NAME __tflite_kernels_cast_test COMMAND __tflite_kernels_cast_test)

add_library(__tflite_kernels_cast_test_common)
target_sources(__tflite_kernels_cast_test_common PRIVATE //tflite/kernels:cast_test_common.h)
target_link_libraries(__tflite_kernels_cast_test_common __tflite_kernels_test_util __tflite_cc_api_stable __tflite_schema_schema_fbs _com_google_absl__absl_types_span)

add_executable(__tflite_kernels_cast_test_common_test_shared_lib )
target_link_libraries(__tflite_kernels_cast_test_common_test_shared_lib __tflite_kernels_cast_test_common)

add_executable(__tflite_kernels_ceil_test //tflite/kernels:ceil_test.cc)
add_test(NAME __tflite_kernels_ceil_test COMMAND __tflite_kernels_ceil_test)

add_executable(__tflite_kernels_combined_all_kernel_tests //tflite/kernels:variable_ops_test.cc //tflite/kernels:audio_spectrogram_test.cc //tflite/kernels:mfcc_test.cc //tflite/kernels:detection_postprocess_test.cc //tflite/kernels:activations_test.cc //tflite/kernels:add_test.cc //tflite/kernels:add_n_test.cc //tflite/kernels:arg_min_max_test.cc //tflite/kernels:div_test.cc //tflite/kernels:sub_test.cc //tflite/kernels:transpose_test_utils_test.cc //tflite/kernels:transpose_test.cc //tflite/kernels:dilate_test.cc //tflite/kernels:reduce_window_test.cc //tflite/kernels:stablehlo_composite_test.cc //tflite/kernels:stablehlo_case_test.cc //tflite/kernels:stablehlo_pad_test.cc //tflite/kernels:stablehlo_reduce_window_test.cc //tflite/kernels:space_to_batch_nd_test.cc //tflite/kernels:batch_to_space_nd_test.cc //tflite/kernels:batch_matmul_test.cc //tflite/kernels:broadcast_args_test.cc //tflite/kernels:broadcast_to_test.cc //tflite/kernels:bucketize_test.cc //tflite/kernels:cast_test.cc //tflite/kernels:concatenation_test.cc //tflite/kernels:conv_test.cc //tflite/kernels:conv3d_test.cc //tflite/kernels:densify_test.cc //tflite/kernels:depthwise_conv_hybrid_test.cc //tflite/kernels:depthwise_conv_test.cc //tflite/kernels:dequantize_test.cc //tflite/kernels:numeric_verify_test.cc //tflite/kernels:basic_rnn_test.cc //tflite/kernels:bidirectional_sequence_lstm_test.cc //tflite/kernels:floor_test.cc //tflite/kernels:ceil_test.cc //tflite/kernels:round_test.cc //tflite/kernels:elementwise_test.cc //tflite/kernels:unidirectional_sequence_lstm_test.cc //tflite/kernels:bidirectional_sequence_rnn_test.cc //tflite/kernels:unidirectional_sequence_rnn_test.cc //tflite/kernels:l2norm_test.cc //tflite/kernels:exp_test.cc //tflite/kernels:fake_quant_test.cc //tflite/kernels:maximum_minimum_test.cc //tflite/kernels:reduce_test.cc //tflite/kernels:mul_test.cc //tflite/kernels:atan2_test.cc //tflite/kernels:atan2_custom_test.cc //tflite/kernels:multinomial_test.cc //tflite/kernels:roll_test.cc //tflite/kernels:pad_test.cc //tflite/kernels:random_ops_test.cc //tflite/kernels:random_standard_normal_custom_test.cc //tflite/kernels:random_uniform_custom_test.cc //tflite/kernels:sign_custom_test.cc //tflite/kernels:sign_test.cc //tflite/kernels:reshape_test.cc //tflite/kernels:gather_test.cc //tflite/kernels:gather_nd_test.cc //tflite/kernels:scatter_nd_test.cc //tflite/kernels:topk_v2_test.cc //tflite/kernels:resize_bilinear_test.cc //tflite/kernels:resize_nearest_neighbor_test.cc //tflite/kernels:svdf_test.cc //tflite/kernels:embedding_lookup_test.cc //tflite/kernels:embedding_lookup_sparse_test.cc //tflite/kernels:fully_connected_test.cc //tflite/kernels:fully_connected_4bit_test.cc //tflite/kernels:local_response_norm_test.cc //tflite/kernels:pooling_test.cc //tflite/kernels:pooling3d_test.cc //tflite/kernels:softmax_test.cc //tflite/kernels:log_softmax_test.cc //tflite/kernels:lsh_projection_test.cc //tflite/kernels:hashtable_lookup_test.cc //tflite/kernels:lstm_test.cc //tflite/kernels:lstm_eval_test.cc //tflite/kernels:skip_gram_test.cc //tflite/kernels:space_to_depth_test.cc //tflite/kernels:depth_to_space_test.cc //tflite/kernels:split_test.cc //tflite/kernels:split_v_test.cc //tflite/kernels:squeeze_test.cc //tflite/kernels:strided_slice_test.cc //tflite/kernels:table_test.cc //tflite/kernels:tile_test.cc //tflite/kernels:comparisons_test.cc //tflite/kernels:neg_test.cc //tflite/kernels:select_test.cc //tflite/kernels:slice_test.cc //tflite/kernels:transpose_conv_test.cc //tflite/kernels:expand_dims_test.cc //tflite/kernels:sparse_to_dense_test.cc //tflite/kernels:shape_test.cc //tflite/kernels:rank_test.cc //tflite/kernels:pow_test.cc //tflite/kernels:pack_test.cc //tflite/kernels:one_hot_test.cc //tflite/kernels:logical_test.cc //tflite/kernels:unpack_test.cc //tflite/kernels:floor_div_test.cc //tflite/kernels:where_test.cc //tflite/kernels:zeros_like_test.cc //tflite/kernels:floor_mod_test.cc //tflite/kernels:range_test.cc //tflite/kernels:squared_difference_test.cc //tflite/kernels:call_once_test.cc //tflite/kernels:if_test.cc //tflite/kernels:while_test.cc //tflite/kernels:fill_test.cc //tflite/kernels:unique_test.cc //tflite/kernels:reverse_test.cc //tflite/kernels:rfft2d_test.cc //tflite/kernels:irfft2d_test.cc //tflite/kernels:non_max_suppression_test.cc //tflite/kernels:mirror_pad_test.cc //tflite/kernels:reverse_sequence_test.cc //tflite/kernels:matrix_diag_test.cc //tflite/kernels:quantize_test.cc //tflite/kernels:matrix_set_diag_test.cc //tflite/kernels:quant_basic_lstm_test.cc //tflite/kernels:segment_sum_test.cc //tflite/kernels:complex_support_test.cc //tflite/kernels:cumsum_test.cc //tflite/kernels:hashtable_ops_test.cc //tflite/kernels:conv3d_transpose_test.cc //tflite/kernels:dynamic_update_slice_test.cc //tflite/kernels:stablehlo_gather_test.cc //tflite/kernels:stablehlo_scatter_test.cc //tflite/kernels:stablehlo_shift_left_test.cc //tflite/kernels:bitcast_test.cc //tflite/kernels:rng_bit_generator_test.cc //tflite/kernels:hadamard_rotation_test.cc)
add_test(NAME __tflite_kernels_combined_all_kernel_tests COMMAND __tflite_kernels_combined_all_kernel_tests)

add_library(__tflite_kernels_combined_all_kernel_tests_lib)
  //tflite/kernels:variable_ops_test.cc //tflite/kernels:audio_spectrogram_test.cc //tflite/kernels:mfcc_test.cc //tflite/kernels:detection_postprocess_test.cc //tflite/kernels:activations_test.cc //tflite/kernels:add_test.cc //tflite/kernels:add_n_test.cc //tflite/kernels:arg_min_max_test.cc //tflite/kernels:div_test.cc //tflite/kernels:sub_test.cc //tflite/kernels:transpose_test_utils_test.cc //tflite/kernels:transpose_test.cc //tflite/kernels:dilate_test.cc //tflite/kernels:reduce_window_test.cc //tflite/kernels:stablehlo_composite_test.cc //tflite/kernels:stablehlo_case_test.cc //tflite/kernels:stablehlo_pad_test.cc //tflite/kernels:stablehlo_reduce_window_test.cc //tflite/kernels:space_to_batch_nd_test.cc //tflite/kernels:batch_to_space_nd_test.cc //tflite/kernels:batch_matmul_test.cc //tflite/kernels:broadcast_args_test.cc //tflite/kernels:broadcast_to_test.cc //tflite/kernels:bucketize_test.cc //tflite/kernels:cast_test.cc //tflite/kernels:concatenation_test.cc //tflite/kernels:conv_test.cc //tflite/kernels:conv3d_test.cc //tflite/kernels:densify_test.cc //tflite/kernels:depthwise_conv_hybrid_test.cc //tflite/kernels:depthwise_conv_test.cc //tflite/kernels:dequantize_test.cc //tflite/kernels:numeric_verify_test.cc //tflite/kernels:basic_rnn_test.cc //tflite/kernels:bidirectional_sequence_lstm_test.cc //tflite/kernels:floor_test.cc //tflite/kernels:ceil_test.cc //tflite/kernels:round_test.cc //tflite/kernels:elementwise_test.cc //tflite/kernels:unidirectional_sequence_lstm_test.cc //tflite/kernels:bidirectional_sequence_rnn_test.cc //tflite/kernels:unidirectional_sequence_rnn_test.cc //tflite/kernels:l2norm_test.cc //tflite/kernels:exp_test.cc //tflite/kernels:fake_quant_test.cc //tflite/kernels:maximum_minimum_test.cc //tflite/kernels:reduce_test.cc //tflite/kernels:mul_test.cc //tflite/kernels:atan2_test.cc //tflite/kernels:atan2_custom_test.cc //tflite/kernels:multinomial_test.cc //tflite/kernels:roll_test.cc //tflite/kernels:pad_test.cc //tflite/kernels:random_ops_test.cc //tflite/kernels:random_standard_normal_custom_test.cc //tflite/kernels:random_uniform_custom_test.cc //tflite/kernels:sign_custom_test.cc //tflite/kernels:sign_test.cc //tflite/kernels:reshape_test.cc //tflite/kernels:gather_test.cc //tflite/kernels:gather_nd_test.cc //tflite/kernels:scatter_nd_test.cc //tflite/kernels:topk_v2_test.cc //tflite/kernels:resize_bilinear_test.cc //tflite/kernels:resize_nearest_neighbor_test.cc //tflite/kernels:svdf_test.cc //tflite/kernels:embedding_lookup_test.cc //tflite/kernels:embedding_lookup_sparse_test.cc //tflite/kernels:fully_connected_test.cc //tflite/kernels:fully_connected_4bit_test.cc //tflite/kernels:local_response_norm_test.cc //tflite/kernels:pooling_test.cc //tflite/kernels:pooling3d_test.cc //tflite/kernels:softmax_test.cc //tflite/kernels:log_softmax_test.cc //tflite/kernels:lsh_projection_test.cc //tflite/kernels:hashtable_lookup_test.cc //tflite/kernels:lstm_test.cc //tflite/kernels:lstm_eval_test.cc //tflite/kernels:skip_gram_test.cc //tflite/kernels:space_to_depth_test.cc //tflite/kernels:depth_to_space_test.cc //tflite/kernels:split_test.cc //tflite/kernels:split_v_test.cc //tflite/kernels:squeeze_test.cc //tflite/kernels:strided_slice_test.cc //tflite/kernels:table_test.cc //tflite/kernels:tile_test.cc //tflite/kernels:comparisons_test.cc //tflite/kernels:neg_test.cc //tflite/kernels:select_test.cc //tflite/kernels:slice_test.cc //tflite/kernels:transpose_conv_test.cc //tflite/kernels:expand_dims_test.cc //tflite/kernels:sparse_to_dense_test.cc //tflite/kernels:shape_test.cc //tflite/kernels:rank_test.cc //tflite/kernels:pow_test.cc //tflite/kernels:pack_test.cc //tflite/kernels:one_hot_test.cc //tflite/kernels:logical_test.cc //tflite/kernels:unpack_test.cc //tflite/kernels:floor_div_test.cc //tflite/kernels:where_test.cc //tflite/kernels:zeros_like_test.cc //tflite/kernels:floor_mod_test.cc //tflite/kernels:range_test.cc //tflite/kernels:squared_difference_test.cc //tflite/kernels:call_once_test.cc //tflite/kernels:if_test.cc //tflite/kernels:while_test.cc //tflite/kernels:fill_test.cc //tflite/kernels:unique_test.cc //tflite/kernels:reverse_test.cc //tflite/kernels:rfft2d_test.cc //tflite/kernels:irfft2d_test.cc //tflite/kernels:non_max_suppression_test.cc //tflite/kernels:mirror_pad_test.cc //tflite/kernels:reverse_sequence_test.cc //tflite/kernels:matrix_diag_test.cc //tflite/kernels:quantize_test.cc //tflite/kernels:matrix_set_diag_test.cc //tflite/kernels:quant_basic_lstm_test.cc //tflite/kernels:segment_sum_test.cc //tflite/kernels:complex_support_test.cc //tflite/kernels:cumsum_test.cc //tflite/kernels:hashtable_ops_test.cc //tflite/kernels:conv3d_transpose_test.cc //tflite/kernels:dynamic_update_slice_test.cc //tflite/kernels:stablehlo_gather_test.cc //tflite/kernels:stablehlo_scatter_test.cc //tflite/kernels:stablehlo_shift_left_test.cc //tflite/kernels:bitcast_test.cc //tflite/kernels:rng_bit_generator_test.cc //tflite/kernels:hadamard_rotation_test.cc
target_link_libraries(__tflite_kernels_combined_all_kernel_tests_lib __tflite_kernels_variable_op_kernels __tflite_framework_stable __tflite_core_framework_stable __tflite_core_c_common __tflite_core_kernels_builtin_ops __tflite_kernels_internal_tensor _com_google_googletest___gtest _flatbuffers___flatbuffers __tflite_kernels_test_util __tflite_schema_schema_fbs __tflite_string __tflite_core_api_api _com_google_absl__absl_memory_memory __tflite_kernels_add_n_test_common __tflite_kernels_transpose_test_utils _com_google_absl__absl_algorithm_container __tflite_c_c_api_types __tflite_kernels_internal_compatibility __tflite_kernels_internal_reference __tflite_kernels_internal_reference_base __tflite_kernels_internal_tensor_utils_no_eigen __tflite_kernels_internal_types __tflite_c_common _com_google_absl__absl_types_span __tflite_kernels_kernel_util __tflite_kernels_subgraph_test_util __tflite_cc_api_stable __tflite_delegates_xnnpack_xnnpack_delegate_hdrs_only __tflite_kernels_internal_tensor_ctypes __tflite_core_cc_api_stable _com_google_absl__absl_log_absl_check __tflite_kernels_stablehlo_reduce_window_test_util _com_google_absl__absl_random_random _com_google_absl__absl_random_bit_gen_ref _com_google_absl__absl_status_status _com_google_absl__absl_status_statusor _com_google_absl__absl_strings_str_format _com_google_absl__absl_log_absl_log _com_google_absl__absl_random_distributions __tflite_kernels_builtin_ops __tflite_testing_util __tflite_kernels_cast_test_common __tflite_core_c_c_api_types _eigen_archive___eigen3 __tflite_kernels_internal_test_util __tflite_kernels_unidirectional_sequence_lstm_test_util _com_google_benchmark___benchmark __tflite_kernels_reduce_test_common __tflite_kernels_custom_ops _com_google_absl__absl_strings_strings __tflite_kernels_reshape_test_common __tflite_kernels_internal_tensor_utils __tflite_kernels_internal_optimized_base __tflite_string_util __tflite_kernels_cpu_backend_context __tflite_kernels_lstm_eval __tflite_kernels_internal_common __tflite_kernels_floor_mod_test_common __tflite_delegates_xnnpack_xnnpack_delegate __tflite_profiling_memory_info __tflite_experimental_resource_resource __tflite_core_subgraph)

add_executable(__tflite_kernels_combined_all_kernel_tests_lib_test_shared_lib )
target_link_libraries(__tflite_kernels_combined_all_kernel_tests_lib_test_shared_lib __tflite_kernels_combined_all_kernel_tests_lib)

add_executable(__tflite_kernels_combined_all_kernel_with_simple_allocator_tests //tflite/kernels:variable_ops_test.cc //tflite/kernels:audio_spectrogram_test.cc //tflite/kernels:mfcc_test.cc //tflite/kernels:detection_postprocess_test.cc //tflite/kernels:activations_test.cc //tflite/kernels:add_test.cc //tflite/kernels:add_n_test.cc //tflite/kernels:arg_min_max_test.cc //tflite/kernels:div_test.cc //tflite/kernels:sub_test.cc //tflite/kernels:transpose_test_utils_test.cc //tflite/kernels:transpose_test.cc //tflite/kernels:dilate_test.cc //tflite/kernels:reduce_window_test.cc //tflite/kernels:stablehlo_composite_test.cc //tflite/kernels:stablehlo_case_test.cc //tflite/kernels:stablehlo_pad_test.cc //tflite/kernels:stablehlo_reduce_window_test.cc //tflite/kernels:space_to_batch_nd_test.cc //tflite/kernels:batch_to_space_nd_test.cc //tflite/kernels:batch_matmul_test.cc //tflite/kernels:broadcast_args_test.cc //tflite/kernels:broadcast_to_test.cc //tflite/kernels:bucketize_test.cc //tflite/kernels:cast_test.cc //tflite/kernels:concatenation_test.cc //tflite/kernels:conv_test.cc //tflite/kernels:conv3d_test.cc //tflite/kernels:densify_test.cc //tflite/kernels:depthwise_conv_hybrid_test.cc //tflite/kernels:depthwise_conv_test.cc //tflite/kernels:dequantize_test.cc //tflite/kernels:numeric_verify_test.cc //tflite/kernels:basic_rnn_test.cc //tflite/kernels:bidirectional_sequence_lstm_test.cc //tflite/kernels:floor_test.cc //tflite/kernels:ceil_test.cc //tflite/kernels:round_test.cc //tflite/kernels:elementwise_test.cc //tflite/kernels:unidirectional_sequence_lstm_test.cc //tflite/kernels:bidirectional_sequence_rnn_test.cc //tflite/kernels:unidirectional_sequence_rnn_test.cc //tflite/kernels:l2norm_test.cc //tflite/kernels:exp_test.cc //tflite/kernels:fake_quant_test.cc //tflite/kernels:maximum_minimum_test.cc //tflite/kernels:reduce_test.cc //tflite/kernels:mul_test.cc //tflite/kernels:atan2_test.cc //tflite/kernels:atan2_custom_test.cc //tflite/kernels:multinomial_test.cc //tflite/kernels:roll_test.cc //tflite/kernels:pad_test.cc //tflite/kernels:random_ops_test.cc //tflite/kernels:random_standard_normal_custom_test.cc //tflite/kernels:random_uniform_custom_test.cc //tflite/kernels:sign_custom_test.cc //tflite/kernels:sign_test.cc //tflite/kernels:reshape_test.cc //tflite/kernels:gather_test.cc //tflite/kernels:gather_nd_test.cc //tflite/kernels:scatter_nd_test.cc //tflite/kernels:topk_v2_test.cc //tflite/kernels:resize_bilinear_test.cc //tflite/kernels:resize_nearest_neighbor_test.cc //tflite/kernels:svdf_test.cc //tflite/kernels:embedding_lookup_test.cc //tflite/kernels:embedding_lookup_sparse_test.cc //tflite/kernels:fully_connected_test.cc //tflite/kernels:fully_connected_4bit_test.cc //tflite/kernels:local_response_norm_test.cc //tflite/kernels:pooling_test.cc //tflite/kernels:pooling3d_test.cc //tflite/kernels:softmax_test.cc //tflite/kernels:log_softmax_test.cc //tflite/kernels:lsh_projection_test.cc //tflite/kernels:hashtable_lookup_test.cc //tflite/kernels:lstm_test.cc //tflite/kernels:lstm_eval_test.cc //tflite/kernels:skip_gram_test.cc //tflite/kernels:space_to_depth_test.cc //tflite/kernels:depth_to_space_test.cc //tflite/kernels:split_test.cc //tflite/kernels:split_v_test.cc //tflite/kernels:squeeze_test.cc //tflite/kernels:strided_slice_test.cc //tflite/kernels:table_test.cc //tflite/kernels:tile_test.cc //tflite/kernels:comparisons_test.cc //tflite/kernels:neg_test.cc //tflite/kernels:select_test.cc //tflite/kernels:slice_test.cc //tflite/kernels:transpose_conv_test.cc //tflite/kernels:expand_dims_test.cc //tflite/kernels:sparse_to_dense_test.cc //tflite/kernels:shape_test.cc //tflite/kernels:rank_test.cc //tflite/kernels:pow_test.cc //tflite/kernels:pack_test.cc //tflite/kernels:one_hot_test.cc //tflite/kernels:logical_test.cc //tflite/kernels:unpack_test.cc //tflite/kernels:floor_div_test.cc //tflite/kernels:where_test.cc //tflite/kernels:zeros_like_test.cc //tflite/kernels:floor_mod_test.cc //tflite/kernels:range_test.cc //tflite/kernels:squared_difference_test.cc //tflite/kernels:call_once_test.cc //tflite/kernels:if_test.cc //tflite/kernels:while_test.cc //tflite/kernels:fill_test.cc //tflite/kernels:unique_test.cc //tflite/kernels:reverse_test.cc //tflite/kernels:rfft2d_test.cc //tflite/kernels:irfft2d_test.cc //tflite/kernels:non_max_suppression_test.cc //tflite/kernels:mirror_pad_test.cc //tflite/kernels:reverse_sequence_test.cc //tflite/kernels:matrix_diag_test.cc //tflite/kernels:quantize_test.cc //tflite/kernels:matrix_set_diag_test.cc //tflite/kernels:quant_basic_lstm_test.cc //tflite/kernels:segment_sum_test.cc //tflite/kernels:complex_support_test.cc //tflite/kernels:cumsum_test.cc //tflite/kernels:hashtable_ops_test.cc //tflite/kernels:conv3d_transpose_test.cc //tflite/kernels:dynamic_update_slice_test.cc //tflite/kernels:stablehlo_gather_test.cc //tflite/kernels:stablehlo_scatter_test.cc //tflite/kernels:stablehlo_shift_left_test.cc //tflite/kernels:bitcast_test.cc //tflite/kernels:rng_bit_generator_test.cc //tflite/kernels:hadamard_rotation_test.cc)
add_test(NAME __tflite_kernels_combined_all_kernel_with_simple_allocator_tests COMMAND __tflite_kernels_combined_all_kernel_with_simple_allocator_tests)

add_executable(__tflite_kernels_comparisons_test //tflite/kernels:comparisons_test.cc)
add_test(NAME __tflite_kernels_comparisons_test COMMAND __tflite_kernels_comparisons_test)

add_executable(__tflite_kernels_complex_support_test //tflite/kernels:complex_support_test.cc)
add_test(NAME __tflite_kernels_complex_support_test COMMAND __tflite_kernels_complex_support_test)

add_executable(__tflite_kernels_concatenation_test //tflite/kernels:concatenation_test.cc)
add_test(NAME __tflite_kernels_concatenation_test COMMAND __tflite_kernels_concatenation_test)

add_library(__tflite_kernels_control_flow_common)
  //tflite/kernels:control_flow_common.cc
target_sources(__tflite_kernels_control_flow_common PRIVATE //tflite/kernels:control_flow_common.h)
target_link_libraries(__tflite_kernels_control_flow_common __tflite_kernels_kernel_util __tflite_util __tflite_core_subgraph __tflite_core_c_common)

add_executable(__tflite_kernels_control_flow_common_test_shared_lib )
target_link_libraries(__tflite_kernels_control_flow_common_test_shared_lib __tflite_kernels_control_flow_common)

add_executable(__tflite_kernels_conv3d_test //tflite/kernels:conv3d_test.cc)
add_test(NAME __tflite_kernels_conv3d_test COMMAND __tflite_kernels_conv3d_test)

add_executable(__tflite_kernels_conv3d_transpose_test //tflite/kernels:conv3d_transpose_test.cc)
add_test(NAME __tflite_kernels_conv3d_transpose_test COMMAND __tflite_kernels_conv3d_transpose_test)

add_executable(__tflite_kernels_conv_mem_test //tflite/kernels:conv_mem_test.cc)
add_test(NAME __tflite_kernels_conv_mem_test COMMAND __tflite_kernels_conv_mem_test)

add_executable(__tflite_kernels_conv_test //tflite/kernels:conv_test.cc)
add_test(NAME __tflite_kernels_conv_test COMMAND __tflite_kernels_conv_test)

add_library(__tflite_kernels_cpu_backend_context)
  //tflite/kernels:cpu_backend_context.cc
target_sources(__tflite_kernels_cpu_backend_context PRIVATE //tflite/kernels:cpu_backend_context.h)
target_link_libraries(__tflite_kernels_cpu_backend_context __tflite_kernels_tflite_with_ruy __tflite_kernels_op_macros _ruy__ruy_context _ruy__ruy_path _gemmlowp___gemmlowp __tflite_core_c_common __tflite_macros __tflite_external_cpu_backend_context __tflite_kernels_internal_compatibility _pthreadpool___pthreadpool _cpuinfo___cpuinfo_with_unstripped_include_path)

add_executable(__tflite_kernels_cpu_backend_context_test_shared_lib )
target_link_libraries(__tflite_kernels_cpu_backend_context_test_shared_lib __tflite_kernels_cpu_backend_context)

add_library(__tflite_kernels_cpu_backend_gemm)
  //tflite/kernels:cpu_backend_gemm_custom_gemv.h //tflite/kernels:cpu_backend_gemm_eigen.cc //tflite/kernels:cpu_backend_gemm_eigen.h //tflite/kernels:cpu_backend_gemm_gemmlowp.h //tflite/kernels:cpu_backend_gemm_x86.h
target_sources(__tflite_kernels_cpu_backend_gemm PRIVATE //tflite/kernels:cpu_backend_gemm.h //tflite/kernels:cpu_backend_gemm_params.h //tflite/kernels:cpu_backend_gemm_ruy.h)
target_link_libraries(__tflite_kernels_cpu_backend_gemm __tflite_kernels_tflite_with_ruy __tflite_kernels_internal_common __tflite_kernels_internal_compatibility __tflite_kernels_internal_cpu_check __tflite_kernels_internal_types __tflite_kernels_cpu_backend_context __tflite_kernels_cpu_backend_threadpool _ruy__ruy_ruy _ruy__ruy_matrix _ruy__ruy_path _ruy__ruy_mul_params _ruy__ruy_profiler_instrumentation _gemmlowp___gemmlowp _eigen_archive___eigen3)

add_executable(__tflite_kernels_cpu_backend_gemm_test //tflite/kernels:cpu_backend_gemm_test.cc)
add_test(NAME __tflite_kernels_cpu_backend_gemm_test COMMAND __tflite_kernels_cpu_backend_gemm_test)

add_executable(__tflite_kernels_cpu_backend_gemm_test_shared_lib )
target_link_libraries(__tflite_kernels_cpu_backend_gemm_test_shared_lib __tflite_kernels_cpu_backend_gemm)

add_library(__tflite_kernels_cpu_backend_threadpool)
target_sources(__tflite_kernels_cpu_backend_threadpool PRIVATE //tflite/kernels:cpu_backend_threadpool.h)
target_link_libraries(__tflite_kernels_cpu_backend_threadpool __tflite_kernels_cpu_backend_context __tflite_kernels_tflite_with_ruy __tflite_kernels_internal_compatibility _ruy__ruy_context _ruy__ruy_thread_pool _gemmlowp___gemmlowp)

add_executable(__tflite_kernels_cpu_backend_threadpool_test //tflite/kernels:cpu_backend_threadpool_test.cc)
add_test(NAME __tflite_kernels_cpu_backend_threadpool_test COMMAND __tflite_kernels_cpu_backend_threadpool_test)

add_executable(__tflite_kernels_cpu_backend_threadpool_test_shared_lib )
target_link_libraries(__tflite_kernels_cpu_backend_threadpool_test_shared_lib __tflite_kernels_cpu_backend_threadpool)

add_executable(__tflite_kernels_cumsum_test //tflite/kernels:cumsum_test.cc)
add_test(NAME __tflite_kernels_cumsum_test COMMAND __tflite_kernels_cumsum_test)

add_library(__tflite_kernels_custom_ops)
  //tflite/kernels:atan2_custom.cc //tflite/kernels:irfft2d.cc //tflite/kernels:multinomial.cc //tflite/kernels:pooling3d.cc //tflite/kernels:random_standard_normal_custom.cc //tflite/kernels:random_uniform_custom.cc //tflite/kernels:roll.cc //tflite/kernels:sign_custom.cc //tflite/kernels:table.cc //tflite/kernels:unidirectional_sequence_gru.cc
target_sources(__tflite_kernels_custom_ops PRIVATE //tflite/kernels:custom_ops_register.h)
target_link_libraries(__tflite_kernels_custom_ops __tflite_kernels_gru_cell __tflite_kernels_kernel_util __tflite_core_c_common __tflite_kernels_cpu_backend_context __tflite_kernels_padding __tflite_kernels_internal_common __tflite_kernels_internal_compatibility __tflite_kernels_internal_reference_base __tflite_kernels_internal_tensor __tflite_kernels_internal_types _fft2d___fft2d _flatbuffers___flatbuffers _org_tensorflow__third_party_fft2d_fft2d_headers _ruy__ruy_profiler_instrumentation)

add_executable(__tflite_kernels_custom_ops_test_shared_lib )
target_link_libraries(__tflite_kernels_custom_ops_test_shared_lib __tflite_kernels_custom_ops)

add_executable(__tflite_kernels_densify_test //tflite/kernels:densify_test.cc)
add_test(NAME __tflite_kernels_densify_test COMMAND __tflite_kernels_densify_test)

add_library(__tflite_kernels_deprecated_backends)
  //tflite/kernels:deprecated_backends.cc

add_executable(__tflite_kernels_deprecated_backends_test_shared_lib )
target_link_libraries(__tflite_kernels_deprecated_backends_test_shared_lib __tflite_kernels_deprecated_backends)

add_executable(__tflite_kernels_depth_to_space_test //tflite/kernels:depth_to_space_test.cc)
add_test(NAME __tflite_kernels_depth_to_space_test COMMAND __tflite_kernels_depth_to_space_test)

add_executable(__tflite_kernels_depthwise_conv_hybrid_test //tflite/kernels:depthwise_conv_hybrid_test.cc)
add_test(NAME __tflite_kernels_depthwise_conv_hybrid_test COMMAND __tflite_kernels_depthwise_conv_hybrid_test)

add_executable(__tflite_kernels_depthwise_conv_test //tflite/kernels:depthwise_conv_test.cc)
add_test(NAME __tflite_kernels_depthwise_conv_test COMMAND __tflite_kernels_depthwise_conv_test)

add_executable(__tflite_kernels_dequantize_test //tflite/kernels:dequantize_test.cc)
add_test(NAME __tflite_kernels_dequantize_test COMMAND __tflite_kernels_dequantize_test)

add_executable(__tflite_kernels_detection_postprocess_test //tflite/kernels:detection_postprocess_test.cc)
add_test(NAME __tflite_kernels_detection_postprocess_test COMMAND __tflite_kernels_detection_postprocess_test)

add_executable(__tflite_kernels_dilate_test //tflite/kernels:dilate_test.cc)
add_test(NAME __tflite_kernels_dilate_test COMMAND __tflite_kernels_dilate_test)

add_executable(__tflite_kernels_div_test //tflite/kernels:div_test.cc)
add_test(NAME __tflite_kernels_div_test COMMAND __tflite_kernels_div_test)

add_executable(__tflite_kernels_dynamic_update_slice_test //tflite/kernels:dynamic_update_slice_test.cc)
add_test(NAME __tflite_kernels_dynamic_update_slice_test COMMAND __tflite_kernels_dynamic_update_slice_test)

add_library(__tflite_kernels_eigen_support)
  //tflite/kernels:eigen_support.cc
target_sources(__tflite_kernels_eigen_support PRIVATE //tflite/kernels:eigen_support.h)
target_link_libraries(__tflite_kernels_eigen_support __tflite_kernels_op_macros __tflite_util __tflite_core_c_common __tflite_kernels_internal_optimized_eigen)

add_executable(__tflite_kernels_eigen_support_test //tflite/kernels:eigen_support_test.cc)
add_test(NAME __tflite_kernels_eigen_support_test COMMAND __tflite_kernels_eigen_support_test)

add_executable(__tflite_kernels_eigen_support_test_shared_lib )
target_link_libraries(__tflite_kernels_eigen_support_test_shared_lib __tflite_kernels_eigen_support)

add_executable(__tflite_kernels_elementwise_test //tflite/kernels:elementwise_test.cc)
add_test(NAME __tflite_kernels_elementwise_test COMMAND __tflite_kernels_elementwise_test)

add_executable(__tflite_kernels_embedding_lookup_sparse_test //tflite/kernels:embedding_lookup_sparse_test.cc)
add_test(NAME __tflite_kernels_embedding_lookup_sparse_test COMMAND __tflite_kernels_embedding_lookup_sparse_test)

add_executable(__tflite_kernels_embedding_lookup_test //tflite/kernels:embedding_lookup_test.cc)
add_test(NAME __tflite_kernels_embedding_lookup_test COMMAND __tflite_kernels_embedding_lookup_test)

add_executable(__tflite_kernels_exp_test //tflite/kernels:exp_test.cc)
add_test(NAME __tflite_kernels_exp_test COMMAND __tflite_kernels_exp_test)

add_executable(__tflite_kernels_expand_dims_test //tflite/kernels:expand_dims_test.cc)
add_test(NAME __tflite_kernels_expand_dims_test COMMAND __tflite_kernels_expand_dims_test)

add_executable(__tflite_kernels_fake_quant_test //tflite/kernels:fake_quant_test.cc)
add_test(NAME __tflite_kernels_fake_quant_test COMMAND __tflite_kernels_fake_quant_test)

add_executable(__tflite_kernels_fill_test //tflite/kernels:fill_test.cc)
add_test(NAME __tflite_kernels_fill_test COMMAND __tflite_kernels_fill_test)

add_executable(__tflite_kernels_floor_div_test //tflite/kernels:floor_div_test.cc)
add_test(NAME __tflite_kernels_floor_div_test COMMAND __tflite_kernels_floor_div_test)

add_executable(__tflite_kernels_floor_mod_test //tflite/kernels:floor_mod_test.cc)
add_test(NAME __tflite_kernels_floor_mod_test COMMAND __tflite_kernels_floor_mod_test)

add_library(__tflite_kernels_floor_mod_test_common)
target_sources(__tflite_kernels_floor_mod_test_common PRIVATE //tflite/kernels:floor_mod_test_common.h)
target_link_libraries(__tflite_kernels_floor_mod_test_common __tflite_kernels_test_util)

add_executable(__tflite_kernels_floor_mod_test_common_test_shared_lib )
target_link_libraries(__tflite_kernels_floor_mod_test_common_test_shared_lib __tflite_kernels_floor_mod_test_common)

add_executable(__tflite_kernels_floor_test //tflite/kernels:floor_test.cc)
add_test(NAME __tflite_kernels_floor_test COMMAND __tflite_kernels_floor_test)

add_executable(__tflite_kernels_fully_connected_4bit_test //tflite/kernels:fully_connected_4bit_test.cc)
add_test(NAME __tflite_kernels_fully_connected_4bit_test COMMAND __tflite_kernels_fully_connected_4bit_test)

add_executable(__tflite_kernels_fully_connected_test //tflite/kernels:fully_connected_test.cc)
add_test(NAME __tflite_kernels_fully_connected_test COMMAND __tflite_kernels_fully_connected_test)

add_executable(__tflite_kernels_gather_nd_test //tflite/kernels:gather_nd_test.cc)
add_test(NAME __tflite_kernels_gather_nd_test COMMAND __tflite_kernels_gather_nd_test)

add_executable(__tflite_kernels_gather_test //tflite/kernels:gather_test.cc)
add_test(NAME __tflite_kernels_gather_test COMMAND __tflite_kernels_gather_test)

add_library(__tflite_kernels_gru_cell)
  //tflite/kernels:gru_cell.cc
target_sources(__tflite_kernels_gru_cell PRIVATE //tflite/kernels:gru_cell.h)
target_link_libraries(__tflite_kernels_gru_cell __tflite_kernels_cpu_backend_context __tflite_kernels_internal_optimized_base __tflite_kernels_internal_tensor _eigen_archive___eigen3)

add_executable(__tflite_kernels_gru_cell_test_shared_lib )
target_link_libraries(__tflite_kernels_gru_cell_test_shared_lib __tflite_kernels_gru_cell)

add_executable(__tflite_kernels_hadamard_rotation_test //tflite/kernels:hadamard_rotation_test.cc)
add_test(NAME __tflite_kernels_hadamard_rotation_test COMMAND __tflite_kernels_hadamard_rotation_test)

add_executable(__tflite_kernels_hashtable_lookup_test //tflite/kernels:hashtable_lookup_test.cc)
add_test(NAME __tflite_kernels_hashtable_lookup_test COMMAND __tflite_kernels_hashtable_lookup_test)

add_executable(__tflite_kernels_hashtable_ops_test //tflite/kernels:hashtable_ops_test.cc)
add_test(NAME __tflite_kernels_hashtable_ops_test COMMAND __tflite_kernels_hashtable_ops_test)

add_executable(__tflite_kernels_if_test //tflite/kernels:if_test.cc)
add_test(NAME __tflite_kernels_if_test COMMAND __tflite_kernels_if_test)

add_executable(__tflite_kernels_irfft2d_test //tflite/kernels:irfft2d_test.cc)
add_test(NAME __tflite_kernels_irfft2d_test COMMAND __tflite_kernels_irfft2d_test)

add_library(__tflite_kernels_kernel_util)
  //tflite/kernels:kernel_util.cc
target_sources(__tflite_kernels_kernel_util PRIVATE //tflite/kernels:kernel_util.h)
target_link_libraries(__tflite_kernels_kernel_util __tflite_kernels_op_macros __tflite_array __tflite_kernel_api __tflite_core_c_common __tflite_kernels_internal_cppmath __tflite_kernels_internal_quantization_util)

add_executable(__tflite_kernels_kernel_util_test //tflite/kernels:kernel_util_test.cc)
add_test(NAME __tflite_kernels_kernel_util_test COMMAND __tflite_kernels_kernel_util_test)

add_executable(__tflite_kernels_kernel_util_test_shared_lib )
target_link_libraries(__tflite_kernels_kernel_util_test_shared_lib __tflite_kernels_kernel_util)

add_executable(__tflite_kernels_l2norm_test //tflite/kernels:l2norm_test.cc)
add_test(NAME __tflite_kernels_l2norm_test COMMAND __tflite_kernels_l2norm_test)

add_executable(__tflite_kernels_local_response_norm_test //tflite/kernels:local_response_norm_test.cc)
add_test(NAME __tflite_kernels_local_response_norm_test COMMAND __tflite_kernels_local_response_norm_test)

add_executable(__tflite_kernels_log_softmax_test //tflite/kernels:log_softmax_test.cc)
add_test(NAME __tflite_kernels_log_softmax_test COMMAND __tflite_kernels_log_softmax_test)

add_executable(__tflite_kernels_logical_test //tflite/kernels:logical_test.cc)
add_test(NAME __tflite_kernels_logical_test COMMAND __tflite_kernels_logical_test)

add_executable(__tflite_kernels_lsh_projection_test //tflite/kernels:lsh_projection_test.cc)
add_test(NAME __tflite_kernels_lsh_projection_test COMMAND __tflite_kernels_lsh_projection_test)

add_library(__tflite_kernels_lstm_eval)
  //tflite/kernels:lstm_eval.cc
target_sources(__tflite_kernels_lstm_eval PRIVATE //tflite/kernels:lstm_eval.h)
target_link_libraries(__tflite_kernels_lstm_eval __tflite_kernels_cpu_backend_context __tflite_kernels_op_macros __tflite_core_c_common __tflite_kernels_internal_compatibility __tflite_kernels_internal_kernel_utils __tflite_kernels_internal_optimized_base __tflite_kernels_internal_tensor __tflite_kernels_internal_tensor_utils _ruy__ruy_ruy _ruy__ruy_profiler_instrumentation)

add_executable(__tflite_kernels_lstm_eval_test //tflite/kernels:lstm_eval_test.cc)
add_test(NAME __tflite_kernels_lstm_eval_test COMMAND __tflite_kernels_lstm_eval_test)

add_executable(__tflite_kernels_lstm_eval_test_shared_lib )
target_link_libraries(__tflite_kernels_lstm_eval_test_shared_lib __tflite_kernels_lstm_eval)

add_library(__tflite_kernels_lstm_shared)
target_sources(__tflite_kernels_lstm_shared PRIVATE //tflite/kernels:lstm_shared.h)

add_executable(__tflite_kernels_lstm_shared_test_shared_lib )
target_link_libraries(__tflite_kernels_lstm_shared_test_shared_lib __tflite_kernels_lstm_shared)

add_executable(__tflite_kernels_lstm_test //tflite/kernels:lstm_test.cc)
add_test(NAME __tflite_kernels_lstm_test COMMAND __tflite_kernels_lstm_test)

add_executable(__tflite_kernels_matrix_diag_test //tflite/kernels:matrix_diag_test.cc)
add_test(NAME __tflite_kernels_matrix_diag_test COMMAND __tflite_kernels_matrix_diag_test)

add_executable(__tflite_kernels_matrix_set_diag_test //tflite/kernels:matrix_set_diag_test.cc)
add_test(NAME __tflite_kernels_matrix_set_diag_test COMMAND __tflite_kernels_matrix_set_diag_test)

add_executable(__tflite_kernels_maximum_minimum_test //tflite/kernels:maximum_minimum_test.cc)
add_test(NAME __tflite_kernels_maximum_minimum_test COMMAND __tflite_kernels_maximum_minimum_test)

add_executable(__tflite_kernels_mfcc_test //tflite/kernels:mfcc_test.cc)
add_test(NAME __tflite_kernels_mfcc_test COMMAND __tflite_kernels_mfcc_test)

add_executable(__tflite_kernels_mirror_pad_test //tflite/kernels:mirror_pad_test.cc)
add_test(NAME __tflite_kernels_mirror_pad_test COMMAND __tflite_kernels_mirror_pad_test)

add_executable(__tflite_kernels_mul_test //tflite/kernels:mul_test.cc)
add_test(NAME __tflite_kernels_mul_test COMMAND __tflite_kernels_mul_test)

add_executable(__tflite_kernels_multinomial_test //tflite/kernels:multinomial_test.cc)
add_test(NAME __tflite_kernels_multinomial_test COMMAND __tflite_kernels_multinomial_test)

add_executable(__tflite_kernels_neg_test //tflite/kernels:neg_test.cc)
add_test(NAME __tflite_kernels_neg_test COMMAND __tflite_kernels_neg_test)

add_executable(__tflite_kernels_non_max_suppression_test //tflite/kernels:non_max_suppression_test.cc)
add_test(NAME __tflite_kernels_non_max_suppression_test COMMAND __tflite_kernels_non_max_suppression_test)

add_executable(__tflite_kernels_numeric_verify_test //tflite/kernels:numeric_verify_test.cc)
add_test(NAME __tflite_kernels_numeric_verify_test COMMAND __tflite_kernels_numeric_verify_test)

add_executable(__tflite_kernels_one_hot_test //tflite/kernels:one_hot_test.cc)
add_test(NAME __tflite_kernels_one_hot_test COMMAND __tflite_kernels_one_hot_test)

add_library(__tflite_kernels_op_macros)
target_sources(__tflite_kernels_op_macros PRIVATE //tflite/kernels:op_macros.h)

add_executable(__tflite_kernels_op_macros_test_shared_lib )
target_link_libraries(__tflite_kernels_op_macros_test_shared_lib __tflite_kernels_op_macros)

add_executable(__tflite_kernels_optional_tensor_test //tflite/kernels:optional_tensor_test.cc)
add_test(NAME __tflite_kernels_optional_tensor_test COMMAND __tflite_kernels_optional_tensor_test)

add_executable(__tflite_kernels_pack_test //tflite/kernels:pack_test.cc)
add_test(NAME __tflite_kernels_pack_test COMMAND __tflite_kernels_pack_test)

add_executable(__tflite_kernels_pad_test //tflite/kernels:pad_test.cc)
add_test(NAME __tflite_kernels_pad_test COMMAND __tflite_kernels_pad_test)

add_library(__tflite_kernels_padding)
target_sources(__tflite_kernels_padding PRIVATE //tflite/kernels:padding.h)
target_link_libraries(__tflite_kernels_padding __tflite_core_c_common __tflite_kernels_internal_types)

add_executable(__tflite_kernels_padding_test_shared_lib )
target_link_libraries(__tflite_kernels_padding_test_shared_lib __tflite_kernels_padding)

add_executable(__tflite_kernels_pooling3d_test //tflite/kernels:pooling3d_test.cc)
add_test(NAME __tflite_kernels_pooling3d_test COMMAND __tflite_kernels_pooling3d_test)

add_executable(__tflite_kernels_pooling_test //tflite/kernels:pooling_test.cc)
add_test(NAME __tflite_kernels_pooling_test COMMAND __tflite_kernels_pooling_test)

add_executable(__tflite_kernels_pow_test //tflite/kernels:pow_test.cc)
add_test(NAME __tflite_kernels_pow_test COMMAND __tflite_kernels_pow_test)

add_executable(__tflite_kernels_pywrap_variable_ops.so //tflite/kernels:variable_ops_wrapper.cc @org_tensorflow//tensorflow:libtensorflow_framework.so.2 @org_tensorflow//tensorflow:libtensorflow_framework.2.dylib)
target_link_libraries(__tflite_kernels_pywrap_variable_ops.so __tflite_framework_stable __tflite_mutable_op_resolver _local_xla__third_party_python_runtime_headers _pybind11___pybind11 __tflite_kernels_pywrap_variable_ops_exported_symbols.lds __tflite_kernels_pywrap_variable_ops_version_script.lds)

add_executable(__tflite_kernels_quant_basic_lstm_test //tflite/kernels:quant_basic_lstm_test.cc)
add_test(NAME __tflite_kernels_quant_basic_lstm_test COMMAND __tflite_kernels_quant_basic_lstm_test)

add_executable(__tflite_kernels_quantize_test //tflite/kernels:quantize_test.cc)
add_test(NAME __tflite_kernels_quantize_test COMMAND __tflite_kernels_quantize_test)

add_executable(__tflite_kernels_random_ops_test //tflite/kernels:random_ops_test.cc)
add_test(NAME __tflite_kernels_random_ops_test COMMAND __tflite_kernels_random_ops_test)

add_executable(__tflite_kernels_random_standard_normal_custom_test //tflite/kernels:random_standard_normal_custom_test.cc)
add_test(NAME __tflite_kernels_random_standard_normal_custom_test COMMAND __tflite_kernels_random_standard_normal_custom_test)

add_executable(__tflite_kernels_random_uniform_custom_test //tflite/kernels:random_uniform_custom_test.cc)
add_test(NAME __tflite_kernels_random_uniform_custom_test COMMAND __tflite_kernels_random_uniform_custom_test)

add_executable(__tflite_kernels_range_test //tflite/kernels:range_test.cc)
add_test(NAME __tflite_kernels_range_test COMMAND __tflite_kernels_range_test)

add_executable(__tflite_kernels_rank_test //tflite/kernels:rank_test.cc)
add_test(NAME __tflite_kernels_rank_test COMMAND __tflite_kernels_rank_test)

add_executable(__tflite_kernels_reduce_test //tflite/kernels:reduce_test.cc)
add_test(NAME __tflite_kernels_reduce_test COMMAND __tflite_kernels_reduce_test)

add_library(__tflite_kernels_reduce_test_common)
target_sources(__tflite_kernels_reduce_test_common PRIVATE //tflite/kernels:reduce_test_common.h)
target_link_libraries(__tflite_kernels_reduce_test_common __tflite_kernels_test_util __tflite_string __tflite_schema_schema_fbs)

add_executable(__tflite_kernels_reduce_test_common_test_shared_lib )
target_link_libraries(__tflite_kernels_reduce_test_common_test_shared_lib __tflite_kernels_reduce_test_common)

add_executable(__tflite_kernels_reduce_window_test //tflite/kernels:reduce_window_test.cc)
add_test(NAME __tflite_kernels_reduce_window_test COMMAND __tflite_kernels_reduce_window_test)

add_library(__tflite_kernels_reference_ops)
  //tflite/kernels:register_ref.cc
target_sources(__tflite_kernels_reference_ops PRIVATE //tflite/kernels:register_ref.h)
target_link_libraries(__tflite_kernels_reference_ops __tflite_kernels_builtin_op_kernels __tflite_framework_stable __tflite_util __tflite_core_c_common __tflite_schema_schema_fbs)

add_executable(__tflite_kernels_reference_ops_test_shared_lib )
target_link_libraries(__tflite_kernels_reference_ops_test_shared_lib __tflite_kernels_reference_ops)

add_executable(__tflite_kernels_reshape_test //tflite/kernels:reshape_test.cc)
add_test(NAME __tflite_kernels_reshape_test COMMAND __tflite_kernels_reshape_test)

add_library(__tflite_kernels_reshape_test_common)
target_sources(__tflite_kernels_reshape_test_common PRIVATE //tflite/kernels:reshape_test_common.h)
target_link_libraries(__tflite_kernels_reshape_test_common __tflite_kernels_test_util __tflite_string __tflite_schema_schema_fbs)

add_executable(__tflite_kernels_reshape_test_common_test_shared_lib )
target_link_libraries(__tflite_kernels_reshape_test_common_test_shared_lib __tflite_kernels_reshape_test_common)

add_executable(__tflite_kernels_resize_bilinear_test //tflite/kernels:resize_bilinear_test.cc)
add_test(NAME __tflite_kernels_resize_bilinear_test COMMAND __tflite_kernels_resize_bilinear_test)

add_executable(__tflite_kernels_resize_nearest_neighbor_test //tflite/kernels:resize_nearest_neighbor_test.cc)
add_test(NAME __tflite_kernels_resize_nearest_neighbor_test COMMAND __tflite_kernels_resize_nearest_neighbor_test)

add_executable(__tflite_kernels_reverse_sequence_test //tflite/kernels:reverse_sequence_test.cc)
add_test(NAME __tflite_kernels_reverse_sequence_test COMMAND __tflite_kernels_reverse_sequence_test)

add_executable(__tflite_kernels_reverse_test //tflite/kernels:reverse_test.cc)
add_test(NAME __tflite_kernels_reverse_test COMMAND __tflite_kernels_reverse_test)

add_executable(__tflite_kernels_rfft2d_test //tflite/kernels:rfft2d_test.cc)
add_test(NAME __tflite_kernels_rfft2d_test COMMAND __tflite_kernels_rfft2d_test)

add_executable(__tflite_kernels_right_shift_test //tflite/kernels:right_shift_test.cc)
add_test(NAME __tflite_kernels_right_shift_test COMMAND __tflite_kernels_right_shift_test)

add_executable(__tflite_kernels_rng_bit_generator_test //tflite/kernels:rng_bit_generator_test.cc)
add_test(NAME __tflite_kernels_rng_bit_generator_test COMMAND __tflite_kernels_rng_bit_generator_test)

add_library(__tflite_kernels_rng_util)
  //tflite/kernels:rng_util.cc
target_sources(__tflite_kernels_rng_util PRIVATE //tflite/kernels:rng_util.h)

add_executable(__tflite_kernels_rng_util_test //tflite/kernels:rng_util_test.cc)
add_test(NAME __tflite_kernels_rng_util_test COMMAND __tflite_kernels_rng_util_test)

add_executable(__tflite_kernels_rng_util_test_shared_lib )
target_link_libraries(__tflite_kernels_rng_util_test_shared_lib __tflite_kernels_rng_util)

add_executable(__tflite_kernels_roll_test //tflite/kernels:roll_test.cc)
add_test(NAME __tflite_kernels_roll_test COMMAND __tflite_kernels_roll_test)

add_executable(__tflite_kernels_round_test //tflite/kernels:round_test.cc)
add_test(NAME __tflite_kernels_round_test COMMAND __tflite_kernels_round_test)

add_executable(__tflite_kernels_scatter_nd_test //tflite/kernels:scatter_nd_test.cc)
add_test(NAME __tflite_kernels_scatter_nd_test COMMAND __tflite_kernels_scatter_nd_test)

add_executable(__tflite_kernels_segment_sum_test //tflite/kernels:segment_sum_test.cc)
add_test(NAME __tflite_kernels_segment_sum_test COMMAND __tflite_kernels_segment_sum_test)

add_executable(__tflite_kernels_select_test //tflite/kernels:select_test.cc)
add_test(NAME __tflite_kernels_select_test COMMAND __tflite_kernels_select_test)

add_executable(__tflite_kernels_shape_test //tflite/kernels:shape_test.cc)
add_test(NAME __tflite_kernels_shape_test COMMAND __tflite_kernels_shape_test)

add_executable(__tflite_kernels_sign_custom_test //tflite/kernels:sign_custom_test.cc)
add_test(NAME __tflite_kernels_sign_custom_test COMMAND __tflite_kernels_sign_custom_test)

add_executable(__tflite_kernels_sign_test //tflite/kernels:sign_test.cc)
add_test(NAME __tflite_kernels_sign_test COMMAND __tflite_kernels_sign_test)

add_executable(__tflite_kernels_skip_gram_test //tflite/kernels:skip_gram_test.cc)
add_test(NAME __tflite_kernels_skip_gram_test COMMAND __tflite_kernels_skip_gram_test)

add_executable(__tflite_kernels_slice_test //tflite/kernels:slice_test.cc)
add_test(NAME __tflite_kernels_slice_test COMMAND __tflite_kernels_slice_test)

add_executable(__tflite_kernels_softmax_test //tflite/kernels:softmax_test.cc)
add_test(NAME __tflite_kernels_softmax_test COMMAND __tflite_kernels_softmax_test)

add_executable(__tflite_kernels_space_to_batch_nd_test //tflite/kernels:space_to_batch_nd_test.cc)
add_test(NAME __tflite_kernels_space_to_batch_nd_test COMMAND __tflite_kernels_space_to_batch_nd_test)

add_executable(__tflite_kernels_space_to_depth_test //tflite/kernels:space_to_depth_test.cc)
add_test(NAME __tflite_kernels_space_to_depth_test COMMAND __tflite_kernels_space_to_depth_test)

add_executable(__tflite_kernels_sparse_to_dense_test //tflite/kernels:sparse_to_dense_test.cc)
add_test(NAME __tflite_kernels_sparse_to_dense_test COMMAND __tflite_kernels_sparse_to_dense_test)

add_executable(__tflite_kernels_split_test //tflite/kernels:split_test.cc)
add_test(NAME __tflite_kernels_split_test COMMAND __tflite_kernels_split_test)

add_executable(__tflite_kernels_split_v_test //tflite/kernels:split_v_test.cc)
add_test(NAME __tflite_kernels_split_v_test COMMAND __tflite_kernels_split_v_test)

add_executable(__tflite_kernels_squared_difference_test //tflite/kernels:squared_difference_test.cc)
add_test(NAME __tflite_kernels_squared_difference_test COMMAND __tflite_kernels_squared_difference_test)

add_executable(__tflite_kernels_squeeze_test //tflite/kernels:squeeze_test.cc)
add_test(NAME __tflite_kernels_squeeze_test COMMAND __tflite_kernels_squeeze_test)

add_executable(__tflite_kernels_stablehlo_add_test //tflite/kernels:stablehlo_add_test.cc)
add_test(NAME __tflite_kernels_stablehlo_add_test COMMAND __tflite_kernels_stablehlo_add_test)

add_executable(__tflite_kernels_stablehlo_and_test //tflite/kernels:stablehlo_and_test.cc)
add_test(NAME __tflite_kernels_stablehlo_and_test COMMAND __tflite_kernels_stablehlo_and_test)

add_executable(__tflite_kernels_stablehlo_case_test //tflite/kernels:stablehlo_case_test.cc)
add_test(NAME __tflite_kernels_stablehlo_case_test COMMAND __tflite_kernels_stablehlo_case_test)

add_executable(__tflite_kernels_stablehlo_composite_test //tflite/kernels:stablehlo_composite_test.cc)
add_test(NAME __tflite_kernels_stablehlo_composite_test COMMAND __tflite_kernels_stablehlo_composite_test)

add_library(__tflite_kernels_stablehlo_elementwise)
  //tflite/kernels:stablehlo_elementwise.cc
target_sources(__tflite_kernels_stablehlo_elementwise PRIVATE //tflite/kernels:stablehlo_elementwise.h)
target_link_libraries(__tflite_kernels_stablehlo_elementwise __tflite_kernels_kernel_util __tflite_core_c_common __tflite_kernels_internal_runtime_shape __tflite_kernels_internal_tensor_ctypes __tflite_kernels_internal_types _eigen_archive___eigen3)

add_executable(__tflite_kernels_stablehlo_elementwise_test_shared_lib )
target_link_libraries(__tflite_kernels_stablehlo_elementwise_test_shared_lib __tflite_kernels_stablehlo_elementwise)

add_executable(__tflite_kernels_stablehlo_gather_test //tflite/kernels:stablehlo_gather_test.cc)
add_test(NAME __tflite_kernels_stablehlo_gather_test COMMAND __tflite_kernels_stablehlo_gather_test)

add_executable(__tflite_kernels_stablehlo_min_max_test //tflite/kernels:stablehlo_min_max_test.cc)
add_test(NAME __tflite_kernels_stablehlo_min_max_test COMMAND __tflite_kernels_stablehlo_min_max_test)

add_executable(__tflite_kernels_stablehlo_multiply_test //tflite/kernels:stablehlo_multiply_test.cc)
add_test(NAME __tflite_kernels_stablehlo_multiply_test COMMAND __tflite_kernels_stablehlo_multiply_test)

add_executable(__tflite_kernels_stablehlo_pad_test //tflite/kernels:stablehlo_pad_test.cc)
add_test(NAME __tflite_kernels_stablehlo_pad_test COMMAND __tflite_kernels_stablehlo_pad_test)

add_executable(__tflite_kernels_stablehlo_reduce_window_test //tflite/kernels:stablehlo_reduce_window_test.cc)
add_test(NAME __tflite_kernels_stablehlo_reduce_window_test COMMAND __tflite_kernels_stablehlo_reduce_window_test)

add_library(__tflite_kernels_stablehlo_reduce_window_test_util)
target_sources(__tflite_kernels_stablehlo_reduce_window_test_util PRIVATE //tflite/kernels:stablehlo_reduce_window_test_util.h)
target_link_libraries(__tflite_kernels_stablehlo_reduce_window_test_util _com_google_absl__absl_algorithm_container)

add_executable(__tflite_kernels_stablehlo_reduce_window_test_util_test //tflite/kernels:stablehlo_reduce_window_test_util_test.cc)
add_test(NAME __tflite_kernels_stablehlo_reduce_window_test_util_test COMMAND __tflite_kernels_stablehlo_reduce_window_test_util_test)

add_executable(__tflite_kernels_stablehlo_reduce_window_test_util_test_shared_lib )
target_link_libraries(__tflite_kernels_stablehlo_reduce_window_test_util_test_shared_lib __tflite_kernels_stablehlo_reduce_window_test_util)

add_executable(__tflite_kernels_stablehlo_scatter_test //tflite/kernels:stablehlo_scatter_test.cc)
add_test(NAME __tflite_kernels_stablehlo_scatter_test COMMAND __tflite_kernels_stablehlo_scatter_test)

add_executable(__tflite_kernels_stablehlo_shift_left_test //tflite/kernels:stablehlo_shift_left_test.cc)
add_test(NAME __tflite_kernels_stablehlo_shift_left_test COMMAND __tflite_kernels_stablehlo_shift_left_test)

add_executable(__tflite_kernels_strided_slice_test //tflite/kernels:strided_slice_test.cc)
add_test(NAME __tflite_kernels_strided_slice_test COMMAND __tflite_kernels_strided_slice_test)

add_executable(__tflite_kernels_sub_test //tflite/kernels:sub_test.cc)
add_test(NAME __tflite_kernels_sub_test COMMAND __tflite_kernels_sub_test)

add_library(__tflite_kernels_subgraph_test_util)
  //tflite/kernels:subgraph_test_util.cc
target_sources(__tflite_kernels_subgraph_test_util PRIVATE //tflite/kernels:subgraph_test_util.h)
target_link_libraries(__tflite_kernels_subgraph_test_util __tflite_kernels_kernel_util __tflite_builtin_ops __tflite_framework_stable __tflite_interpreter_test_util __tflite_string_util __tflite_c_c_api_types __tflite_core_framework_stable __tflite_core_subgraph __tflite_core_c_common __tflite_core_kernels_builtin_ops __tflite_schema_schema_fbs _com_google_absl__absl_algorithm_container _com_google_googletest___gtest)

add_executable(__tflite_kernels_subgraph_test_util_test //tflite/kernels:subgraph_test_util_test.cc)
add_test(NAME __tflite_kernels_subgraph_test_util_test COMMAND __tflite_kernels_subgraph_test_util_test)

add_executable(__tflite_kernels_subgraph_test_util_test_shared_lib )
target_link_libraries(__tflite_kernels_subgraph_test_util_test_shared_lib __tflite_kernels_subgraph_test_util)

add_executable(__tflite_kernels_svdf_test //tflite/kernels:svdf_test.cc)
add_test(NAME __tflite_kernels_svdf_test COMMAND __tflite_kernels_svdf_test)

add_executable(__tflite_kernels_table_test //tflite/kernels:table_test.cc)
add_test(NAME __tflite_kernels_table_test COMMAND __tflite_kernels_table_test)

add_library(__tflite_kernels_tensor_slice_util)
  //tflite/kernels:tensor_slice_util.cc
target_sources(__tflite_kernels_tensor_slice_util PRIVATE //tflite/kernels:tensor_slice_util.h)
target_link_libraries(__tflite_kernels_tensor_slice_util __tflite_core_c_common __tflite_kernels_internal_runtime_shape __tflite_kernels_internal_tensor_ctypes)

add_executable(__tflite_kernels_tensor_slice_util_test //tflite/kernels:tensor_slice_util_test.cc)
add_test(NAME __tflite_kernels_tensor_slice_util_test COMMAND __tflite_kernels_tensor_slice_util_test)

add_executable(__tflite_kernels_tensor_slice_util_test_shared_lib )
target_link_libraries(__tflite_kernels_tensor_slice_util_test_shared_lib __tflite_kernels_tensor_slice_util)

add_library(__tflite_kernels_test_delegate_providers_lib)
  //tflite/kernels:test_delegate_providers.cc
target_sources(__tflite_kernels_test_delegate_providers_lib PRIVATE //tflite/kernels:test_delegate_providers.h)
target_link_libraries(__tflite_kernels_test_delegate_providers_lib __tflite_tools_command_line_flags __tflite_tools_logging __tflite_tools_tool_params __tflite_tools_delegates_delegate_provider_hdr __tflite_tools_delegates_delegate_provider_lib)

add_executable(__tflite_kernels_test_delegate_providers_lib_test //tflite/kernels:test_delegate_providers_test.cc)
add_test(NAME __tflite_kernels_test_delegate_providers_lib_test COMMAND __tflite_kernels_test_delegate_providers_lib_test)

add_executable(__tflite_kernels_test_delegate_providers_lib_test_shared_lib )
target_link_libraries(__tflite_kernels_test_delegate_providers_lib_test_shared_lib __tflite_kernels_test_delegate_providers_lib)

add_library(__tflite_kernels_test_main)
  //tflite/kernels:test_main.cc
target_link_libraries(__tflite_kernels_test_main __tflite_kernels_test_delegate_providers_lib __tflite_kernels_test_util __tflite_kernels_test_util_delegate_providers __tflite_testing_util __tflite_tools_command_line_flags _com_google_benchmark___benchmark _com_google_googletest___gtest)

add_executable(__tflite_kernels_test_main_test_shared_lib )
target_link_libraries(__tflite_kernels_test_main_test_shared_lib __tflite_kernels_test_main)

add_library(__tflite_kernels_test_util)
  //tflite/kernels:test_util.cc
target_sources(__tflite_kernels_test_util PRIVATE //tflite/kernels:test_util.h)
target_link_libraries(__tflite_kernels_test_util __tflite_kernels_acceleration_test_util __tflite_kernels_kernel_util __tflite_kernels_test_delegate_providers_lib __tflite_framework_stable __tflite_schema_fbs_version __tflite_simple_planner __tflite_string __tflite_string_util __tflite_type_to_tflitetype __tflite_util __tflite_core_framework_stable __tflite_core_subgraph __tflite_core_api_api __tflite_core_c_common __tflite_core_kernels_builtin_ops __tflite_delegates_nnapi_acceleration_test_util __tflite_delegates_nnapi_nnapi_delegate __tflite_kernels_internal_tensor_ctypes __tflite_kernels_internal_tensor_utils __tflite_kernels_internal_utils_sparsity_format_converter __tflite_nnapi_nnapi_implementation __tflite_schema_schema_conversion_utils __tflite_schema_schema_fbs __tflite_testing_util __tflite_tools_logging __tflite_tools_optimize_quantization_utils __tflite_tools_serialization_writer_lib __tflite_tools_versioning_versioning _FP16___FP16 _com_google_absl__absl_algorithm_container _com_google_absl__absl_base_base _com_google_absl__absl_base_core_headers _com_google_absl__absl_base_no_destructor _com_google_absl__absl_strings_strings _com_google_absl__absl_strings_str_format _com_google_absl__absl_synchronization_synchronization _com_google_absl__absl_types_span _com_google_googletest___gtest _eigen_archive___eigen3 _flatbuffers___flatbuffers _local_tsl__tsl_platform_logging)

add_library(__tflite_kernels_test_util_delegate_providers)
target_link_libraries(__tflite_kernels_test_util_delegate_providers __tflite_tools_delegates_coreml_delegate_provider __tflite_tools_delegates_default_execution_provider __tflite_tools_delegates_delegate_provider_lib __tflite_tools_delegates_external_delegate_provider __tflite_tools_delegates_hexagon_delegate_provider __tflite_tools_delegates_nnapi_delegate_provider __tflite_tools_delegates_xnnpack_delegate_provider __tflite_tools_delegates_experimental_stable_delegate_delegate_provider __tflite_tools_delegates_gpu_delegate_provider)

add_executable(__tflite_kernels_test_util_delegate_providers_test_shared_lib )
target_link_libraries(__tflite_kernels_test_util_delegate_providers_test_shared_lib __tflite_kernels_test_util_delegate_providers)

add_executable(__tflite_kernels_test_util_test //tflite/kernels:test_util_test.cc)
add_test(NAME __tflite_kernels_test_util_test COMMAND __tflite_kernels_test_util_test)

add_executable(__tflite_kernels_test_util_test_shared_lib )
target_link_libraries(__tflite_kernels_test_util_test_shared_lib __tflite_kernels_test_util)

add_library(__tflite_kernels_tflite_with_ruy)
target_link_libraries(__tflite_kernels_tflite_with_ruy __tflite_kernels_tflite_with_ruy_enabled __tflite_kernels_tflite_with_ruy_default)

add_library(__tflite_kernels_tflite_with_ruy_default)
target_link_libraries(__tflite_kernels_tflite_with_ruy_default __tflite_kernels_tflite_with_ruy_enabled)

add_executable(__tflite_kernels_tflite_with_ruy_default_test_shared_lib )
target_link_libraries(__tflite_kernels_tflite_with_ruy_default_test_shared_lib __tflite_kernels_tflite_with_ruy_default)

add_library(__tflite_kernels_tflite_with_ruy_enabled)

add_executable(__tflite_kernels_tflite_with_ruy_enabled_test_shared_lib )
target_link_libraries(__tflite_kernels_tflite_with_ruy_enabled_test_shared_lib __tflite_kernels_tflite_with_ruy_enabled)

add_executable(__tflite_kernels_tflite_with_ruy_test_shared_lib )
target_link_libraries(__tflite_kernels_tflite_with_ruy_test_shared_lib __tflite_kernels_tflite_with_ruy)

add_executable(__tflite_kernels_tile_test //tflite/kernels:tile_test.cc)
add_test(NAME __tflite_kernels_tile_test COMMAND __tflite_kernels_tile_test)

add_executable(__tflite_kernels_topk_v2_test //tflite/kernels:topk_v2_test.cc)
add_test(NAME __tflite_kernels_topk_v2_test COMMAND __tflite_kernels_topk_v2_test)

add_executable(__tflite_kernels_transpose_conv_test //tflite/kernels:transpose_conv_test.cc)
add_test(NAME __tflite_kernels_transpose_conv_test COMMAND __tflite_kernels_transpose_conv_test)

add_executable(__tflite_kernels_transpose_test //tflite/kernels:transpose_test.cc)
add_test(NAME __tflite_kernels_transpose_test COMMAND __tflite_kernels_transpose_test)

add_library(__tflite_kernels_transpose_test_utils)
target_sources(__tflite_kernels_transpose_test_utils PRIVATE //tflite/kernels:transpose_test_utils.h)
target_link_libraries(__tflite_kernels_transpose_test_utils __tflite_kernels_internal_reference __tflite_kernels_internal_reference_base __tflite_kernels_internal_types _com_google_absl__absl_algorithm_container _com_google_absl__absl_types_span)

add_executable(__tflite_kernels_transpose_test_utils_test //tflite/kernels:transpose_test_utils_test.cc)
add_test(NAME __tflite_kernels_transpose_test_utils_test COMMAND __tflite_kernels_transpose_test_utils_test)

add_executable(__tflite_kernels_transpose_test_utils_test_shared_lib )
target_link_libraries(__tflite_kernels_transpose_test_utils_test_shared_lib __tflite_kernels_transpose_test_utils)

add_executable(__tflite_kernels_unidirectional_sequence_gru_test //tflite/kernels:unidirectional_sequence_gru_test.cc)
add_test(NAME __tflite_kernels_unidirectional_sequence_gru_test COMMAND __tflite_kernels_unidirectional_sequence_gru_test)

add_executable(__tflite_kernels_unidirectional_sequence_lstm_test //tflite/kernels:unidirectional_sequence_lstm_test.cc)
add_test(NAME __tflite_kernels_unidirectional_sequence_lstm_test COMMAND __tflite_kernels_unidirectional_sequence_lstm_test)

add_library(__tflite_kernels_unidirectional_sequence_lstm_test_util)
target_sources(__tflite_kernels_unidirectional_sequence_lstm_test_util PRIVATE //tflite/kernels:unidirectional_sequence_lstm_test_util.h)
target_link_libraries(__tflite_kernels_unidirectional_sequence_lstm_test_util __tflite_kernels_test_util __tflite_schema_schema_fbs _flatbuffers___flatbuffers)

add_executable(__tflite_kernels_unidirectional_sequence_lstm_test_util_test_shared_lib )
target_link_libraries(__tflite_kernels_unidirectional_sequence_lstm_test_util_test_shared_lib __tflite_kernels_unidirectional_sequence_lstm_test_util)

add_executable(__tflite_kernels_unidirectional_sequence_rnn_test //tflite/kernels:unidirectional_sequence_rnn_test.cc)
add_test(NAME __tflite_kernels_unidirectional_sequence_rnn_test COMMAND __tflite_kernels_unidirectional_sequence_rnn_test)

add_executable(__tflite_kernels_unique_test //tflite/kernels:unique_test.cc)
add_test(NAME __tflite_kernels_unique_test COMMAND __tflite_kernels_unique_test)

add_executable(__tflite_kernels_unpack_test //tflite/kernels:unpack_test.cc)
add_test(NAME __tflite_kernels_unpack_test COMMAND __tflite_kernels_unpack_test)

add_executable(__tflite_kernels_unsorted_segment_max_test //tflite/kernels:unsorted_segment_max_test.cc //tflite/kernels:unsorted_segment_test.cc //tflite/kernels:unsorted_segment_test.h)
add_test(NAME __tflite_kernels_unsorted_segment_max_test COMMAND __tflite_kernels_unsorted_segment_max_test)

add_executable(__tflite_kernels_unsorted_segment_min_test //tflite/kernels:unsorted_segment_sum_test.cc //tflite/kernels:unsorted_segment_test.cc //tflite/kernels:unsorted_segment_test.h)
add_test(NAME __tflite_kernels_unsorted_segment_min_test COMMAND __tflite_kernels_unsorted_segment_min_test)

add_executable(__tflite_kernels_unsorted_segment_prod_test //tflite/kernels:unsorted_segment_prod_test.cc //tflite/kernels:unsorted_segment_test.cc //tflite/kernels:unsorted_segment_test.h)
add_test(NAME __tflite_kernels_unsorted_segment_prod_test COMMAND __tflite_kernels_unsorted_segment_prod_test)

add_executable(__tflite_kernels_unsorted_segment_sum_test //tflite/kernels:unsorted_segment_sum_test.cc //tflite/kernels:unsorted_segment_test.cc //tflite/kernels:unsorted_segment_test.h)
add_test(NAME __tflite_kernels_unsorted_segment_sum_test COMMAND __tflite_kernels_unsorted_segment_sum_test)

add_library(__tflite_kernels_variable_op_kernels)
  //tflite/kernels:assign_variable.cc //tflite/kernels:read_variable.cc //tflite/kernels:var_handle.cc
target_link_libraries(__tflite_kernels_variable_op_kernels __tflite_kernels_kernel_util __tflite_framework_stable __tflite_core_subgraph __tflite_core_c_common __tflite_experimental_resource_resource __tflite_kernels_internal_tensor _flatbuffers___flatbuffers)

add_executable(__tflite_kernels_variable_op_kernels_test_shared_lib )
target_link_libraries(__tflite_kernels_variable_op_kernels_test_shared_lib __tflite_kernels_variable_op_kernels)

add_executable(__tflite_kernels_variable_ops_test //tflite/kernels:variable_ops_test.cc)
add_test(NAME __tflite_kernels_variable_ops_test COMMAND __tflite_kernels_variable_ops_test)

add_executable(__tflite_kernels_where_test //tflite/kernels:where_test.cc)
add_test(NAME __tflite_kernels_where_test COMMAND __tflite_kernels_where_test)

add_executable(__tflite_kernels_while_test //tflite/kernels:while_test.cc)
add_test(NAME __tflite_kernels_while_test COMMAND __tflite_kernels_while_test)

add_executable(__tflite_kernels_zeros_like_test //tflite/kernels:zeros_like_test.cc)
add_test(NAME __tflite_kernels_zeros_like_test COMMAND __tflite_kernels_zeros_like_test)

