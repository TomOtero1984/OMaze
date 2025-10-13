# Auto-generated CMake for package tflite/delegates/hexagon/java

add_executable(__tflite_delegates_hexagon_java_libtensorflowlite_hexagon_jni.so )
target_link_libraries(__tflite_delegates_hexagon_java_libtensorflowlite_hexagon_jni.so __tflite_delegates_hexagon_java_src_main_native_native __tflite_delegates_hexagon_version_script.lds __tflite_java_src_main_native_exported_symbols.lds)

# Unsupported rule genrule for //tflite/delegates/hexagon/java:tensorflow-lite-hexagon

# Unsupported rule genrule for //tflite/delegates/hexagon/java:tensorflow-lite-hexagon_binary_manifest_generator

# Unsupported rule android_binary for //tflite/delegates/hexagon/java:tensorflow-lite-hexagon_dummy_app_for_so

add_library(__tflite_delegates_hexagon_java_tensorflowlite_hexagon)
  //tflite/delegates/hexagon/java:libtensorflowlite_hexagon_jni.so @hexagon_nn//:hexagon/arm64-v8a/libhexagon_interface.so @hexagon_nn//:hexagon/armeabi-v7a/libhexagon_interface.so

# Unsupported rule android_library for //tflite/delegates/hexagon/java:tensorflowlite_java_hexagon

