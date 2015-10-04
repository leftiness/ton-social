module.exports = angular.module('modules.home', [])
	.config(require('./homeRoutes'))
	.directive('homeView', require('./homeDirective'))
	.controller('HomeCtrl', require('./HomeController'));
