#/bin/bash

find . -name "*.iml" -exec sed -i '/scope="RUNTIME" /s/\(.*\)/<!-- & -->/' {} \;
