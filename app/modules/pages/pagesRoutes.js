function pageRoutes($stateProvider) {
	'use strict';

	var pages = {
		name: 'pages',
		parent: 'main',
		abstract: true,
		url: '/pages',
		template: '<div ui-view></div>',
		controller: 'PagesCtrl as pages'
	};

	var about = {
		name: 'pages.about',
		url: '^/about',
		template: '<div about-view></div>',
		data: {
			moduleClasses: 'page',
			pageClasses: 'about',
			pageTitle: 'About',
			pageDescription: 'Some description.'
		}
	};

	$stateProvider.state(pages);
	$stateProvider.state(about);

}

pageRoutes.$inject = ['$stateProvider'];

module.exports = pageRoutes;
