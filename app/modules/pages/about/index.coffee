module.exports = angular.module "modules.pages.about", []
	.directive "aboutView", require "./aboutDirective.coffee"
	.controller "AboutCtrl", require "./AboutController.coffee"
