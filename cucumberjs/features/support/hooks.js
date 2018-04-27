const { driver } = require("./driver");
const getWorldParameters = require("./world").getWorldParameters;
const config = require("../../../config").config;
const configCRM = require("../../../configCRM").configCRM;
const nock = require("nock");
const fs = require("fs");
let frontEndVersion;
let backEndVersion;

module.exports = function () {
	this.Before((scenario) => {
		scenario.attach(getWorldParameters().platform);
	});

	this.After(async () => {
		const getBrowserHandle = await driver.getBrowser();
		//await driver.takeScreenshots();
		return driver.quitBrowser();
	});

	this.registerHandler("AfterFeatures", () => {
		const reporter = require("cucumber-html-reporter");

		const options = {
			theme: "bootstrap",
			jsonDir: "cucumberjs/features/reports",
			output: "cucumberjs/features/reports/cucumber_report.html",
			reportSuiteAsScenarios: true,
			launchReport: true,
			ignoreBadJsonFile: true,
			storeScreenshots: true,
			screenshotsDirectory: 'cucumberjs/features/reports/screenshots/',
			metadata: {
				"App Version": "Waste Permits",
				"FrontEnd Test Environment": config.appUrl,
				"BackEnd Test Environment": configCRM.appUrlCRM,
				"FrontEnd Version": frontEndVersion,
				"BackEnd Version": backEndVersion,
				Browser: getWorldParameters().platform,
				//Platform: "Windows 10",
				Parallel: "Scenarios",
				Executed: "local"
			}
		};

		reporter.generate(options);
	});

};
