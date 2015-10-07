HeaderCtrl = ($mdSidenav, $mdMedia, LoginService) ->
	"use strict"
	self = this
	self.toggleMenu = ->
		$mdSidenav("sidenav").toggle()
	self.$mdMedia = $mdMedia
	self.login = LoginService
	self

HeaderCtrl.$inject = ["$mdSidenav", "$mdMedia", "LoginService"]

module.exports = HeaderCtrl
