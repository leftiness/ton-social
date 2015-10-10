module.exports = ->
	"use strict"
	profileDirective =
		controller: "ProfileCtrl as profile"
		template: require "./profile.jade"
		restrict: "EA"
		scope: true
