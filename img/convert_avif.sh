#!/usr/bin/env bash

# rm -rf ./*00w.avif

for file in *.avif
do
    filename="${file%.*}"
    echo "Converting ${filename}..."
    convert "$file" -resize 800x800 "${filename}-800w.avif"
    convert "$file" -resize 400x400 "${filename}-400w.avif"
done
