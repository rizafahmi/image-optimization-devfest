#!/usr/bin/env bash

rm -rf ./*00w.jpg

for file in *.jpg
do
    filename="${file%.*}"
    convert "$file" -resize 800x800 "${filename}-800w.jpg"
    convert "$file" -resize 400x400 "${filename}-400w.jpg"
done
