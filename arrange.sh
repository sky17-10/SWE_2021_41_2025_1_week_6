#!/bin/bash

cd ./files

for file in *; do
  if [[ -f "$file" ]]; then
    # 첫 글자 추출 (소문자 기준)
    first_letter=$(echo "${file:0:1}" | tr 'A-Z' 'a-z')

    # 만약 첫 글자가 a~z 중 하나라면 해당 폴더로 이동
    if [[ "$first_letter" =~ [a-z] ]]; then
      mkdir -p "../$first_letter"
      mv "$file" "../$first_letter/"
    fi
  fi
done
