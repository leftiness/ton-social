module.exports = angular.module "modules.profile", []
	.config require "./profileRoutes.coffee"
	.directive "profileView", require "./profileDirective.coffee"
	.controller "ProfileCtrl", require "./ProfileController.coffee"
