LoginService = ($state, $mdToast, Restangular, SettingsService) ->
	self = this
	self.user = {}
	self.attempts = 0
	self.attempt = ->
		self.attempts += 1
		if self.attempts > 2
			toast = $mdToast.simple()
				.content "Recover your account?"
				.position "top right"
				.action "Yes"
			$mdToast.show(toast).then (res) ->
				if res == "ok"
					$state.go "recover"
					self.attempts = 0
	self.login = (json) ->
		if !!!json.username or !!!json.password
			return
		rest = Restangular.all "login"
		json =
			username: json.username
			password: json.password
			remember: json.remember # TODO Implement remember me functionality
		okLogin = (res) ->
			self.user["username"] = json.username
			self.user["alerts"] = 5 # TODO Move alerts to an alertservice
			$state.go("home")
			self.attempts = 0
			SettingsService.getSettings()
		koLogin = (res) ->
			toast = $mdToast.simple()
				.content "Failed to log in. Reason: #{res.data.reason}"
				.position "top right"
			$mdToast.show toast
		rest.post(json).then okLogin, koLogin
	self.logout = ->
		# Obviously not the real function
	self.signup = (username, password, email) ->
		# Obviously not the real function
		if username and password and email
			self.login username, password, false
	self

LoginService.$inject = ["$state", "$mdToast", "Restangular", "SettingsService"];

module.exports = LoginService;
