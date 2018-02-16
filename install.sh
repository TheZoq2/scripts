#!/bin/bash

# These files will not be installed
SELF="install.sh"

# Find all script files in the directory
FILES=$(ls .)

while read -r file; do
    if [ "$file" != "$SELF" ]; then
        ln -s "$(pwd)/${file}" "../${file}"
    fi
done <<< "${FILES}"

