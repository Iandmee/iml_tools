#!/bin/bash
source ./setup_variables.sh
find $PROJECT_PATH -name "*.iml" -execdir rm  BUILD 2> /dev/null \;
find $PROJECT_PATH -name "*.iml" -execdir touch  BUILD \;
bazel run --action_env=BAZEL_CXXOPTS="-std=c++20" --java_runtime_version=remotejdk_17 @iml_tools//tools/base/bazel:iml_to_build -- --project_path $PROJECT_PATH

