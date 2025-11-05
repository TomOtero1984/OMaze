script_folder="/Users/totero/Studio/Projects/OMaze/LiteRT-LM/conan_build/build/Release/generators"
echo "echo Restoring environment" > "$script_folder/deactivate_conanbuildenv-release-armv8.sh"
for v in PATH LD_LIBRARY_PATH DYLD_LIBRARY_PATH
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

export PATH="/Users/totero/.conan2/p/protoae4d17427b99d/p/bin:$PATH"
export LD_LIBRARY_PATH="/Users/totero/.conan2/p/protoae4d17427b99d/p/lib:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/Users/totero/.conan2/p/protoae4d17427b99d/p/lib:$DYLD_LIBRARY_PATH"