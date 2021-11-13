#!/bin/sh

var=`find . -type f -iname '*TO_REPLACE*'`

for i in $var
do
	mv "$i" "`echo $i | sed 's/TO_REPLACE/TO_REPLACE_WITH/g'`"
done
