# url = require("../../common/constants.js").hub # TODO
# service = (require "../../common/RequestService.js") url # TODO

routes =
	verb: "post"
	path: "/settings"
	fn: (req, res) ->
		### TODO
		complete = (response) ->
		error = (error) ->
		service.request "post", "/settings"
			.then complete, error
		###
		json =
			data:
				name: req.body.name
				surname: req.body.surname
				email: req.body.email
		res.status(200).json json

module.exports = routes
