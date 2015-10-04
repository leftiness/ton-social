#!/bin/bash
BOWER='./bower_components/'
DEPS=(
	'angular/angular.min.js'
	'angular-animate/angular-animate.min.js'
	'angular-aria/angular-aria.min.js'
	'angular-cookies/angular-cookies.min.js'
	'angular-material/angular-material.min.js'
	'angular-resource/angular-resource.min.js'
	'angular-sanitize/angular-sanitize.min.js'
	'angular-ui-router/release/angular-ui-router.min.js'
	'lodash/lodash.min.js'
	'restangular/dist/restangular.min.js'
)
CONCAT=''

for each in "${DEPS[@]}"
do
	CONCAT="$CONCAT -r $BOWER$each"
done

CMD="browserify $CONCAT -o ./dist/vendor.js"

eval $CMD
