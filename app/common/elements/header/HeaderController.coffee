HeaderCtrl = ($mdSidenav, $mdMedia) ->
	"use strict"
	self = this
	self.alerts = 0
	self.toggleMenu = ->
		$mdSidenav("sidenav").toggle()
	self.viewAlerts = ->
		self.alerts += 1 #Obviously not the real function
	self.$mdMedia = $mdMedia
	self

HeaderCtrl.$inject = ["$mdSidenav", "$mdMedia"]

module.exports = HeaderCtrl
