#!/bin/bash
chmod +x setup_variables.sh
source ./setup_variables.sh
ln -s ~/.m2 m2
touch m2/BUILD
(cd external/skia && git apply ../../patches/skia.patch)
(cd prebuilts/tools && git apply ../../patches/prebuilts_tools.patch && cp -r ../../updated_file_versions_for_prebuilts_tools/ common/m2/repository/org/jetbrains/updated_file_versions/)
(cd intellij-community && git clone git://git.jetbrains.org/idea/android.git android && cd android &&  git fetch --all --tags && git checkout tags/idea/233.14015.106)
