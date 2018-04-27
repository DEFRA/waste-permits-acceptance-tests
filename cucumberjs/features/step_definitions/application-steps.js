const World = require("../support/world").World;

module.exports = function () {
	this.World = World;

	this.defineStep(/^the application has been launched$/, { timeout: 60000 }, function () {
		this.appConfiguration.injectInterceptor();
		return this.application.launch(this.appConfiguration);
	});

	this.defineStep(/^the CRM application has been launched$/, { timeout: 60000 }, function () {
		this.appConfiguration.injectInterceptor();
		return this.application.launchCRM(this.appConfiguration);
	});


	this.defineStep(/^I take a screenshot$/, { timeout: 60000 }, function () {

		return this.page.save_screenshot('trialscreenshot.png');
	});
  
	this.defineStep(/^I configure the app for "([^"]*)"$/, { timeout: 60000 }, function (feature) {
		this.appConfiguration.setConfigForFeature(feature);
	});

	this.defineStep(/^the app is started after being configured$/, { timeout: 60000 }, function () {
		this.appConfiguration.startApp();
	});
};
