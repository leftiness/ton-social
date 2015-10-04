pagesRoutes = ($stateProvider) ->
	"use strict"
	pages =
		name: "pages"
		parent: "main"
		abstract: true
		url: "/pages"
		template: "<div ui-view></div>"
		controller: "PagesCtrl as pages"

	about =
		name: "pages.about"
		url: "^/about"
		template: "<div about-view></div>"
		data:
			moduleClasses: "page"
			pagesClasses: "about"
			pageTitle: "About"
			pageDescription: "Some description."

	$stateProvider.state pages
	$stateProvider.state about

pagesRoutes.$inject = ["$stateProvider"]

module.exports = pagesRoutes
