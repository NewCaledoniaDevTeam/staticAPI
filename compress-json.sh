#!/bin/bash

for dir in ./**/; do
    mkdir "$dir"/min
    jq -c < "$dir/index.json" > "$dir/min/index.json"
done

#for file in ./**/min/*index.json; do
#    jq -c < "$file" > "${file%.*}.min.json"
#done
