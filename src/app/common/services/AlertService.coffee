AlertService = ($timeout) ->
	self = this
	# TODO Subscribe to a socketio stream for alerts
	self.alerts = [
		_ =
			type: "pm"
			content: "Hey, what do you think about the ..."
		_ =
			type: "post"
			content: "Nah, I think it's good the way it is."
	]
	self

AlertService.$inject = ["$timeout"];

module.exports = AlertService;
