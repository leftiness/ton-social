LoginCtrl = (LoginService) ->
	"use strict"
	self = this
	self.username = undefined
	self.password = undefined
	self.remember = undefined
	self.login = ->
		LoginService.login self.username, self.password, self.remember
	self

LoginCtrl.$inject = ["LoginService"]

module.exports = LoginCtrl
