SidenavCtrl = ($mdMedia, $mdSidenav, $state, LoginService) ->
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
	self.$mdSidenav = $mdSidenav
	self.login = LoginService
	self.clickProfileButton = ->
		user = LoginService.user
		if user.token
			params =
				id: user.id
				view: "posts"
			$state.go "profile", params
		else
			$state.go "login"
		$mdSidenav("sidenav").close()
	self

SidenavCtrl.$inject = ["$mdMedia", "$mdSidenav", "$state", "LoginService"]

module.exports = SidenavCtrl
