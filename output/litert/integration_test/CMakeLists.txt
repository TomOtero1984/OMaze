# Auto-generated CMake for package litert/integration_test

add_executable(__litert_integration_test__google_tensor_smoketest //litert/integration_test:smoketests/google_tensor_smoketest.cc)
add_test(NAME __litert_integration_test__google_tensor_smoketest COMMAND __litert_integration_test__google_tensor_smoketest)

add_executable(__litert_integration_test__mediatek_smoketest //litert/integration_test:smoketests/mediatek_smoketest.cc)
add_test(NAME __litert_integration_test__mediatek_smoketest COMMAND __litert_integration_test__mediatek_smoketest)

add_executable(__litert_integration_test__qnn_smoketest //litert/integration_test:smoketests/qnn_smoketest.cc)
add_test(NAME __litert_integration_test__qnn_smoketest COMMAND __litert_integration_test__qnn_smoketest)

add_executable(__litert_integration_test__tools_test //litert/integration_test:smoketests/tools_test.cc)
add_test(NAME __litert_integration_test__tools_test COMMAND __litert_integration_test__tools_test)

# Unsupported rule sh_binary for //litert/integration_test:classic_ml_device_tests_cpu_adb

# Unsupported rule expand_template for //litert/integration_test:classic_ml_device_tests_cpu_expanded_template

# Unsupported rule filegroup for //litert/integration_test:classic_ml_device_tests_cpu_host_runfiles

# Unsupported rule sh_binary for //litert/integration_test:classic_ml_device_tests_qualcomm_JIT_adb

# Unsupported rule expand_template for //litert/integration_test:classic_ml_device_tests_qualcomm_JIT_expanded_template

# Unsupported rule filegroup for //litert/integration_test:classic_ml_device_tests_qualcomm_JIT_host_runfiles

add_executable(__litert_integration_test_gen_device_test //litert/integration_test:gen_device_test.cc)
add_test(NAME __litert_integration_test_gen_device_test COMMAND __litert_integration_test_gen_device_test)

add_library(__litert_integration_test_gen_device_test_lib)
target_sources(__litert_integration_test_gen_device_test_lib PRIVATE //litert/integration_test:gen_device_test_lib.h)
target_link_libraries(__litert_integration_test_gen_device_test_lib __litert_c_litert_common __litert_cc_litert_compiled_model __litert_cc_litert_environment __litert_cc_litert_model __litert_cc_litert_tensor_buffer __litert_core_model_model __litert_test_matchers _com_google_absl__absl_strings_string_view _com_google_googletest___gtest)

# Unsupported rule sh_binary for //litert/integration_test:google_tensor_smoketest_adb

# Unsupported rule expand_template for //litert/integration_test:google_tensor_smoketest_expanded_template

# Unsupported rule filegroup for //litert/integration_test:google_tensor_smoketest_host_runfiles

# Unsupported rule sh_binary for //litert/integration_test:mediatek_smoketest_adb

# Unsupported rule expand_template for //litert/integration_test:mediatek_smoketest_expanded_template

# Unsupported rule filegroup for //litert/integration_test:mediatek_smoketest_host_runfiles

# Unsupported rule sh_binary for //litert/integration_test:pre_compiled_device_tests_qualcomm_adb

# Unsupported rule expand_template for //litert/integration_test:pre_compiled_device_tests_qualcomm_expanded_template

# Unsupported rule filegroup for //litert/integration_test:pre_compiled_device_tests_qualcomm_host_runfiles

# Unsupported rule sh_binary for //litert/integration_test:qnn_smoketest_adb

# Unsupported rule expand_template for //litert/integration_test:qnn_smoketest_expanded_template

# Unsupported rule filegroup for //litert/integration_test:qnn_smoketest_host_runfiles

# Unsupported rule sh_binary for //litert/integration_test:single_op_device_tests_cpu_adb

# Unsupported rule expand_template for //litert/integration_test:single_op_device_tests_cpu_expanded_template

# Unsupported rule filegroup for //litert/integration_test:single_op_device_tests_cpu_host_runfiles

# Unsupported rule sh_binary for //litert/integration_test:single_op_device_tests_qualcomm_JIT_adb

# Unsupported rule expand_template for //litert/integration_test:single_op_device_tests_qualcomm_JIT_expanded_template

# Unsupported rule filegroup for //litert/integration_test:single_op_device_tests_qualcomm_JIT_host_runfiles

# Unsupported rule sh_binary for //litert/integration_test:tools_test_adb

# Unsupported rule expand_template for //litert/integration_test:tools_test_expanded_template

# Unsupported rule filegroup for //litert/integration_test:tools_test_host_runfiles

