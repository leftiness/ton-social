LoginService = ($state) ->
	self = this
	self.user = undefined
	self.login = (username, password, remember) ->
		# Obviously not the real function
		if username and password
			self.user =
				id: 1
				name: username
				alerts: 5
			$state.go("home")
	self.logout = ->
		# Obviously not the real function
		self.user = undefined
	self.signup = (username, password, email) ->
		# Obviously not the real function
		if username and password and email
			self.login username, password, false
	self

LoginService.$inject = ["$state"];

module.exports = LoginService;
