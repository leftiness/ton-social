module.exports = function homeDirective() {
	'use strict';
	return {
		controller: 'HomeCtrl as home',
		template: require('./home.html'),
		restrict: 'EA',
		scope: true
	};
};
