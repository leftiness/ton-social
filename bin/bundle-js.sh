#!/bin/bash
BOWER='./bower_components/'
DEPS=(
	'angular/angular.js'
	'angular-animate/angular-animate.js'
	'angular-aria/angular-aria.js'
	'angular-cookies/angular-cookies.js'
	'angular-material/angular-material.js'
	'angular-resource/angular-resource.js'
	'angular-sanitize/angular-sanitize.js'
	'angular-ui-router/release/angular-ui-router.js'
	'lodash/lodash.js'
	'restangular/dist/restangular.js'
)
CONCAT=''

for each in "${DEPS[@]}"
do
	CONCAT="$CONCAT -x $BOWER$each"
done

CMD="browserify ./app/app.coffee -o ./dist/bundle.js $CONCAT"

eval $CMD
