SettingsService = ($mdToast, Restangular, LoginService) ->
	self = this
	rest = Restangular.all "settings"
	self.settings =
		name: undefined
		surname: undefined
		email: undefined
	self.getSettings = ->
		okGet = (res) ->
			self.settings = res.data
		koGet = (res) ->
			toast = $mdToast.simple()
				.content "Failed to get settings. Reason: #{res.data.reason}"
				.position "top right"
			$mdToast.show toast
		user = LoginService.user
		json =
			username: user.username
			token: user.token
		rest.get(json).then okGet, koGet
	self.postSettings = (json) ->
		okPost = (res) ->
			for own key, value of res.data
				self.settings[key] = value
		koPost = (res) ->
			toast = $mdToast.simple()
				.content "Failed to post settings. Reason: #{res.data.reason}"
				.position "top right"
			$mdToast.show toast
		rest.post(json).then okPost, koPost
	self

SettingsService.$inject = ["$mdToast", "Restangular", "LoginService"];

module.exports = SettingsService;
