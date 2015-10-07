LoginCtrl = (LoginService) ->
	"use strict"
	self = this
	self.testVar = "Var from LoginCtrl"
	self.login = (username, password) ->
		LoginService.login(username, password)
	self

LoginCtrl.$inject = ["LoginService"]

module.exports = LoginCtrl
