route =
	path: "/ping"
	fn: (req, res) ->
		json =
			message: "ping!"
		res.json json

module.exports = route
