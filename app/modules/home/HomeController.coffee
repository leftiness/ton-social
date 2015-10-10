HomeCtrl = (LoginService) ->
	"use strict"
	self = this
	self.login = LoginService
	self

HomeCtrl.$inject = ["LoginService"]

module.exports = HomeCtrl
