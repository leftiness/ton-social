profileRoutes = ($stateProvider) ->
	"use strict"
	profile =
		name: "profile"
		parent: "main"
		url: "^/profile/:id"
		template: "<div profile-view></div>"
		data:
			moduleClasses: "page"
			pageClasses: "profile"
			pageTitle: "Profile"
			pageDescription: "Meta Description goes here"

	$stateProvider.state profile

profileRoutes.$inject = ["$stateProvider"]

module.exports = profileRoutes
