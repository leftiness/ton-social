ProfileCtrl = ($mdMedia, LoginService, ActionsService, SettingsService) ->
	"use strict"
	self = this
	self.bigPicture = "http://lorempixel.com/400/400/nature/"
	self.smallPicture = "http://loremPixel.com/200/200/cats"
	self.login = LoginService
	self.$mdMedia = $mdMedia
	self.set = SettingsService
	self.friends = 5 # Fake
	self.groups = 3 # Fake
	self.posts = 22 # Fake
	self.photos = 17 # Fake
	self.viewFriends = ->
		# Fake
		alert "View friends"
	self.viewGroups = ->
		# Fake
		alert "View groups"
	self.viewPosts = ->
		# Fake
		alert "View posts"
	self.viewPhotos = ->
		# Fake
		alert "View photos"
	self.sendMessage = ->
		# Fake
		alert "Send message"
	self.addFriend = ->
		#Fake
		alert "Add friend"
	# Obviously these actions are fake
	ActionsService.init [
		_ =
			name: "View friends"
			icon: "fa-user"
			callback: self.viewFriends
		_ =
			name: "View groups"
			icon: "fa-users"
			callback: self.viewGroups
		_ =
			name: "View posts"
			icon: "fa-comments"
			callback: self.viewPosts
		_ =
			name: "View photos"
			icon: "fa-picture-o"
			callback: self.viewPhotos
		_ =
			name: "Add friend"
			icon: "fa-user"
			callback: self.addFriend
			login: true
		_ =
			name: "Send message"
			icon: "fa-comments"
			callback: self.sendMessage
			login: true
	]
	self

ProfileCtrl.$inject = [
	"$mdMedia"
	"LoginService"
	"ActionsService"
	"SettingsService"
]

module.exports = ProfileCtrl
