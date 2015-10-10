HomeCtrl = (LoginService) ->
	"use strict"
	self = this
	self.login = LoginService

HomeCtrl.$inject = ["LoginService"]

module.exports = HomeCtrl
