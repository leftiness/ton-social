ProfileCtrl = (LoginService, $mdMedia) ->
	"use strict"
	self = this
	self.bigPicture = "http://lorempixel.com/400/400/nature/"
	self.smallPicture = "http://loremPixel.com/200/200/cats"
	self.login = LoginService
	self.$mdMedia = $mdMedia
	self.loops = [1..20].map (i) -> "#{i}"
	self

ProfileCtrl.$inject = ["LoginService", "$mdMedia"]

module.exports = ProfileCtrl
