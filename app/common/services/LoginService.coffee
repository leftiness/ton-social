LoginService = ->
	self = this
	self.user = undefined
	self.login = (username, password) ->
		# Obviously not the real function
		self.user =
			id: 1
			name: "Brandon"
			alerts: 5
	self.logout = ->
		# Obviously not the real function
		self.user = undefined
	self

LoginService.$inject = [];

module.exports = LoginService;
