#!/bin/sh

for file in *.png
do
	convert "$file" "${file%.png}.xpm"
done

if [ $? -eq 0 ]; then
	rm *.png
	echo "\033[32mDone !\033[0m"
else
	echo "\033[31mConversion failed !\033[0m"
fi
