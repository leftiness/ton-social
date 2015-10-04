#!/bin/bash
BOWER='./bower_components/'
DEPS=(
	'font-awesome/css/font-awesome.css'
	'angular-material/angular-material.css'
)
CONCAT=''

for each in "${DEPS[@]}"
do
	CONCAT="$CONCAT $BOWER$each"
done

cat $CONCAT > ./dist/vendor.css
