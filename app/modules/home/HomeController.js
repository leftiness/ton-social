function HomeCtrl($scope) {
	'use strict';
	$scope.testVar = 'We are up and running using a required module!';
}

HomeCtrl.$inject = ['$scope'];

module.exports = HomeCtrl;
