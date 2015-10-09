module.exports = angular.module "modules.pages.about", []
	.config require "./aboutRoutes.coffee"
	.directive "aboutView", require "./aboutDirective.coffee"
	.controller "AboutCtrl", require "./AboutController.coffee"
