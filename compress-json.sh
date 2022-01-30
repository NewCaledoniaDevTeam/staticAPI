#!/bin/bash

for file in ./**/*index.json; do
    jq -c < "$file" > "${file%.*}.min.json"
done

for file in ./**/**/*index.json; do
    jq -c < "$file" > "${file%.*}.min.json"
done
