module.exports = function aboutDirective() {
	'use strict';
	return {
		controller: 'AboutCtrl as about',
		template: require('./about.html'),
		restrict: 'EA',
		scope: true
	};
};
