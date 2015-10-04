#!/bin/bash
DEPS=(
	'angular'
	'angular-animate'
	'angular-aria'
	'angular-material'
	'angular-ui-router'
	'lodash'
	'restangular'
)
CONCAT=''

for each in "${DEPS[@]}"
do
	CONCAT="$CONCAT -x $each"
done

CMD="watchify ./app/app.js -o ./dist/bundle.js -dv $CONCAT"

eval $CMD
