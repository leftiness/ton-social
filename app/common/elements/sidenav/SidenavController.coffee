SidenavCtrl = ($mdMedia, LoginService) ->
	"use strict"
	self = this
	self.items = [
		_ =
			name: "Home"
			sref: "home"
		_ =
			name: "About"
			sref: "pages.about"
	]
	self.$mdMedia = $mdMedia
	self.login = LoginService
	self.getProfileButtonSref = ->
		user = LoginService.user
		if user then "profile({id: #{user.id}, view: 'posts'})"
		else "login"
	self

SidenavCtrl.$inject = ["$mdMedia", "LoginService"]

module.exports = SidenavCtrl
