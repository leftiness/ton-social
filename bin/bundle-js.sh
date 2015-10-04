#!/bin/bash
DEPS=(
	'angular'
	'angular-animate'
	'angular-aria'
	'angular-cookies'
	'angular-material'
	'angular-resource'
	'angular-sanitize'
	'angular-ui-router'
	'lodash'
	'restangular'
)
CONCAT=''

for each in "${DEPS[@]}"
do
	CONCAT="$CONCAT -x $each"
done

CMD="browserify ./app/app.js -o ./dist/bundle.js $CONCAT"

eval $CMD
