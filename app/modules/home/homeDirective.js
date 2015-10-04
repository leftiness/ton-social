module.exports = function homeDirective() {
	'use strict';
	return {
		controller: 'HomeCtrl',
		template: require('./home.html'),
		restrict: 'EA',
		scope: true
	};
};
