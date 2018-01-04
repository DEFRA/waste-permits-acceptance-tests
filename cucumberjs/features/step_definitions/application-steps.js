const World = require("../support/world").World;

module.exports = function () {
	this.World = World;

	this.defineStep(/^the application has been launched$/, { timeout: 10000 }, function () {
		this.appConfiguration.injectInterceptor();
		return this.application.launch(this.appConfiguration);
	});

	this.defineStep(/^the CRM application has been launched$/, { timeout: 10000 }, function () {
		this.appConfiguration.injectInterceptor();
		return this.application.launchCRM(this.appConfiguration);
	});
	this.defineStep(/^I configure the app for "([^"]*)"$/, function (feature) {
		this.appConfiguration.setConfigForFeature(feature);
	});

	this.defineStep(/^the app is started after being configured$/, function () {
		this.appConfiguration.startApp();
	});
};
