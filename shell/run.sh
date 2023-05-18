#!/bin/bash

word=$1
klasor=$2
files=() #array

for file in "$klasor"/*; do
  if [ -f "$file" ]; then
    if grep -q "$word" "$file"; then
      files+=("$file")
    fi
  fi
done

if [ ${#files[@]} -ne 0 ]; then
  echo "Dosyalar:"
  for file in "${files[@]}"; do
    echo "$file"
  done
fi
