#!/bin/bash

for file in ./**/*.json; do
    echo $(cat $file | grep -v "^\s*//") > $file
    jq -c < "$file" > "${file%.*}.min.json"
done
