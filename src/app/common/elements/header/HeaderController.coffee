HeaderCtrl = ($mdSidenav, $mdMedia, LoginService, AlertService) ->
	"use strict"
	self = this
	self.$mdSidenav = $mdSidenav
	self.$mdMedia = $mdMedia
	self.login = LoginService
	self.alerts = AlertService
	self

HeaderCtrl.$inject = ["$mdSidenav", "$mdMedia", "LoginService", "AlertService"]

module.exports = HeaderCtrl
