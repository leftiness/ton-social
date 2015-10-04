function PagesCtrl() {
	'use strict';

	var self = this;

	this.childModulesInheritThis = 'This text is inherited from the About page\'s parent scope (PagesCtrl).';
}

PagesCtrl.$inject = [];

module.exports = PagesCtrl;
