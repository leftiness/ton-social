#!/bin/bash
BOWER='./bower_components/'
DEPS=(
	'font-awesome/css/font-awesome.css'
	'angular-material/angular-material.css'
)

for each in "${DEPS[@]}"
do
	cat $BOWER$each > ./dist/vendor.css
done
