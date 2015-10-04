module.exports = angular.module('modules',
	[
		require('./home').name,
		require('./pages').name,
	])
	.config(require('./mainRoutes'))
	.controller('MainCtrl', require('./MainController'));
