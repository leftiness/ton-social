LoginService = ($state, $mdToast) ->
	self = this
	self.user =
		name: "Anon"
	self.attempts = 0
	self.login = (username, password, remember) ->
		# Obviously not the real function
		self.attempts += 1
		if username and password
			self.user =
				id: 1
				name: "Ced"
				alerts: 5
				email: "ced@gmail.com"
				token: 12345
			$state.go("home")
			self.attempts = 0
		else if self.attempts > 2
			toast = $mdToast.simple()
				.content "Recover your account?"
				.position "top right"
				.action "Yes"
			$mdToast.show(toast).then (res) ->
				if res == "ok"
					$state.go "recover"
					self.attempts = 0
	self.logout = ->
		# Obviously not the real function
		self.user =
			name: "Anon"
	self.signup = (username, password, email) ->
		# Obviously not the real function
		if username and password and email
			self.login username, password, false
	self

LoginService.$inject = ["$state", "$mdToast"];

module.exports = LoginService;
