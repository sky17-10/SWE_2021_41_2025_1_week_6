#!/bin/bash

cd ./files

for file in *; do
  if [[ -f "$file" ]]; then
    first_letter=$(echo "${file:0:1}" | tr 'A-Z' 'a-z')

    if [[ "$first_letter" =~ [a-z] ]]; then
      mkdir -p "../$first_letter"
      mv "$file" "../$first_letter/"
    fi
  fi
done
