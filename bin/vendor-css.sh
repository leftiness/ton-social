#!/bin/bash
BOWER='./bower_components/'
DEPS[0]='font-awesome/css/font-awesome.css'
DEPS[1]='angular-material/angular-material.css'
CONCAT=''

for each in "${DEPS[@]}"
do
	CONCAT="$CONCAT $BOWER$each"
done

cat $CONCAT > ./dist/vendor.css
