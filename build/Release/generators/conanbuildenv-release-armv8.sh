script_folder="/Users/totero/Studio/Projects/OMaze/build/Release/generators"
echo "echo Restoring environment" > "$script_folder/deactivate_conanbuildenv-release-armv8.sh"
for v in GRPC_DEFAULT_SSL_ROOTS_FILE_PATH PATH LD_LIBRARY_PATH DYLD_LIBRARY_PATH
do
   is_defined="true"
   value=$(printenv $v) || is_defined="" || true
   if [ -n "$value" ] || [ -n "$is_defined" ]
   then
       echo export "$v='$value'" >> "$script_folder/deactivate_conanbuildenv-release-armv8.sh"
   else
       echo unset $v >> "$script_folder/deactivate_conanbuildenv-release-armv8.sh"
   fi
done

export GRPC_DEFAULT_SSL_ROOTS_FILE_PATH="/Users/totero/.conan2/p/grpcbee33335d1aee/p/res/grpc/roots.pem"
export PATH="/Users/totero/.conan2/p/grpcbee33335d1aee/p/bin:/Users/totero/.conan2/p/protode53f97654d88/p/bin:$PATH"
export LD_LIBRARY_PATH="/Users/totero/.conan2/p/grpcbee33335d1aee/p/lib:/Users/totero/.conan2/p/protode53f97654d88/p/lib:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/Users/totero/.conan2/p/grpcbee33335d1aee/p/lib:/Users/totero/.conan2/p/protode53f97654d88/p/lib:$DYLD_LIBRARY_PATH"