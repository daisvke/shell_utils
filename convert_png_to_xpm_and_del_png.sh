#!/bin/sh

for file in *.png
do
	convert "$file" "${file%.png}.xpm"
done

rm *.png
