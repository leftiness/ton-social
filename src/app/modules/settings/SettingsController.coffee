SettingsCtrl = ->
	"use strict"
	self = this
	self.settings =
		name: ''
		surname: ''
		email: ''
	self.submit = ->
		console.log self.settings
	self

SettingsCtrl.$inject = []

module.exports = SettingsCtrl
