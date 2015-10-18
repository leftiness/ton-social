route =
	path: "/pong"
	fn: (req, res) ->
		json =
			message: "pong!"
		res.json json

module.exports = route
