const World = require("../support/world").World;

module.exports = function () {

	this.World = World;

	this.defineStep(/^fake data is loaded$/, { timeout: 2000000 }, function () {
		return this.fakes.loadLogin();
	});
};
