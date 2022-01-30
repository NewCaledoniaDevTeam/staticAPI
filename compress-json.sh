#!/bin/bash

for file in ./**/*index.json; do
    mkdir "$(dirname $(readlink -f "$file"))/min"
    jq -c < "$file" > "${file%.*}.min.json"
done
