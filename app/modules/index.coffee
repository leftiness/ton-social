module.exports = angular.module "modules", [
		require("./home/index.coffee").name
		require("./about/index.coffee").name
		require("./login/index.coffee").name
		require("./signup/index.coffee").name
		require("./profile/index.coffee").name
		require("./legal/index.coffee").name
		require("./recover/index.coffee").name
	]
	.config require "./mainRoutes.coffee"
	.controller "MainCtrl", require "./MainController.coffee"
