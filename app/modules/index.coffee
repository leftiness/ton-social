module.exports = angular.module "modules", [
		require("./home/index.coffee").name
		require("./about/index.coffee").name
		require("./login/index.coffee").name
		require("./signup/index.coffee").name
	]
	.config require "./mainRoutes.coffee"
	.controller "MainCtrl", require "./MainController.coffee"
