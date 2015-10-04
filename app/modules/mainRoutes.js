function mainRoutes($stateProvider) {
	'use strict';

	var main = {
		name: 'main',
		abstract: true,
		url: '/',
		template: '<div ui-view></div>',
		controller: 'MainCtrl as main'
	};

	$stateProvider.state(main);

}

mainRoutes.$inject = ['$stateProvider'];

module.exports = mainRoutes;
