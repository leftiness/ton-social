SidenavCtrl = ($mdMedia) ->
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
	self.user = "leftiness"
	self.viewProfile = ->
		alert self.user #Obviously not the real function
	self.$mdMedia = $mdMedia
	self

SidenavCtrl.$inject = ["$mdMedia"]

module.exports = SidenavCtrl
