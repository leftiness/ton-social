module.exports = ->
	"use strict"
	aboutDirective =
		controller: "AboutCtrl as about"
		template: require "./about.html"
		restrict: "EA"
		scope: true
