SidenavCtrl = ($mdMedia, $state, LoginService) ->
	"use strict"
	self = this
	self.items = [
		_ =
			name: "Home"
			sref: "home"
		_ =
			name: "About"
			sref: "about"
	]
	self.$mdMedia = $mdMedia
	self.login = LoginService
	self.clickProfileButton = ->
		user = LoginService.user
		if user
			params =
				id: user.id
				view: "posts"
			$state.go "profile", params
		else
			$state.go "login"
	self

SidenavCtrl.$inject = ["$mdMedia", "$state", "LoginService"]

module.exports = SidenavCtrl
