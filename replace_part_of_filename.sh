#!/bin/sh

var1=`find . -type f -iname '*TO_REPLACE*'`
for i in $var1; do mv "$i" "`echo $i | sed 's/TO_REPLACE/TO_REPLACE_WITH/g'`"; done
