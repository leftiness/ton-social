module.exports = angular.module "modules.pages", [
		require("./about/index.coffee").name
	]
	.config require "./pagesRoutes.coffee"
	.controller "PagesCtrl", require "./PagesController.coffee"
