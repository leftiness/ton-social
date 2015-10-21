route =
	verb: "post"
	path: "/login"
	fn: (req, res) ->
		username = req.body.username
		password = req.body.password
		remember = req.body.remember
		# Obviously this is not the final function
		if username == "error"
			# Why does 400 need json.reason when 200 needs json.data.token?
			json =
				reason: "Dummy error response"
			res.status(400).json json
		else
			json =
				data:
					token: 12345
			res.status(200).json json

module.exports = route
