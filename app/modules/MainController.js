function MainCtrl($rootScope, $scope) {
	'use strict';

	$scope.test = "HELLO!!";

	console.log('Up and running!');

}

MainCtrl.$inject = ['$rootScope', '$scope'];

module.exports = MainCtrl;
