ActionsCtrl = ($scope, $mdMedia, $timeout, ActionsService) ->
	"use strict"
	self = this
	self.open = false
	self.tooltip = false
	self.service = ActionsService
	self.do = (action) ->
		action.callback()
	$scope.$watch (-> self.open), (res) ->
		fn = -> if (self.open) then self.tooltip = true
		if (res) then $timeout fn, 500 else self.tooltip = false
	self

ActionsCtrl.$inject = ["$scope", "$mdMedia", "$timeout", "ActionsService"]

module.exports = ActionsCtrl
