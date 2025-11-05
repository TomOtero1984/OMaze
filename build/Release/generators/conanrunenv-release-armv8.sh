script_folder="/Users/totero/Studio/Projects/OMaze/build/Release/generators"
echo "echo Restoring environment" > "$script_folder/deactivate_conanrunenv-release-armv8.sh"
for v in GRPC_DEFAULT_SSL_ROOTS_FILE_PATH OPENSSL_MODULES
do
   is_defined="true"
   value=$(printenv $v) || is_defined="" || true
   if [ -n "$value" ] || [ -n "$is_defined" ]
   then
       echo export "$v='$value'" >> "$script_folder/deactivate_conanrunenv-release-armv8.sh"
   else
       echo unset $v >> "$script_folder/deactivate_conanrunenv-release-armv8.sh"
   fi
done

export GRPC_DEFAULT_SSL_ROOTS_FILE_PATH="/Users/totero/.conan2/p/grpcbee33335d1aee/p/res/grpc/roots.pem"
export OPENSSL_MODULES="/Users/totero/.conan2/p/b/opens5dd459f172531/p/lib/ossl-modules"