module.exports = ->
	"use strict"
	homeDirective =
		controller: "HomeCtrl as home"
		template: require "./home.html"
		restrict: "EA"
		scope: true
