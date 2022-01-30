#!/bin/bash

for file in ./**/*.json; do
    jq -c < "$file" > "${file%.*}.min.json"
done
