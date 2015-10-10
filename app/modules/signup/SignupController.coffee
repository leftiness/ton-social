SignupController = (LoginService) ->
	"use strict"
	self = this
	self.username = undefined
	self.password = undefined
	self.confirm = undefined
	self.email = undefined
	self.signup = ->
		LoginService.signup self.username, self.password, self.email
	self

SignupController.$inject = ["LoginService"]

module.exports = SignupController
