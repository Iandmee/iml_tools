#!/bin/bash
declare -A variables=( 
    ["PROJECT_PATH"]="/home/jetbrains/test-project/iml_tools/intellij-community"
    ["M2_REPOSITORY_PATH"]="/home/jetbrains/test-project/iml_tools/m2/repository"
    ["USE_BAZEL_VERSION"]="6.4.0"
)

for var in "${!variables[@]}"; do 
    if [ -z "${!var}" ]; then
        export $var=${variables[$var]}
        echo "$var is set to the default value ${variables[$var]}"
    else
        echo "$var is already set with value ${!var}"
    fi
done
