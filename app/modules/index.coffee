module.exports = angular.module "modules", [
		require("./home/index.coffee").name
		require("./pages/index.coffee").name
		require("./login/index.coffee").name
	]
	.config require "./mainRoutes.coffee"
	.controller "MainCtrl", require "./MainController.coffee"
