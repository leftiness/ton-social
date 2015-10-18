LoginService = ($state, $mdToast, Restangular) ->
	self = this
	self.user =
		name: "Anon"
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
	self.login = (username, password, remember) ->
		if !!!username or !!!password
			return
		rest = Restangular.all "login"
		json =
			username: username
			password: password
			remember: remember # TODO Implement remember me functionality
		okLogin = (res) ->
			self.user =
				username: username
				name: "Ced" # TODO Move name into a userservice
				alerts: 5 # TODO Move alerts to an alertservice
				email: "ced@gmail.com" #TODO Move email into a userservice
				token: res.data.token
			$state.go("home")
			self.attempts = 0
		koLogin = (res) ->
			toast = $mdToast.simple()
				.content "Failed to log in. Reason: #{res.data.reason}"
				.position "top right"
			$mdToast.show toast
		rest.post(json).then okLogin, koLogin
	self.logout = ->
		# Obviously not the real function
		self.user =
			name: "Anon"
	self.signup = (username, password, email) ->
		# Obviously not the real function
		if username and password and email
			self.login username, password, false
	self

LoginService.$inject = ["$state", "$mdToast", "Restangular"];

module.exports = LoginService;
