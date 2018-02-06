const { driver } = require("./driver");
const getWorldParameters = require("./world").getWorldParameters;
const config = require("../../../config").config;
const configCRM = require("../../../configCRM").configCRM;
const nock = require("nock");

let frontEndVersion;
let backEndVersion;

module.exports = function () {
	this.Before((scenario) => {
		scenario.attach(getWorldParameters().platform);
		// nock.disableNetConnect();
		// nock.enableNetConnect("127.0.0.1");
		// const scope = nock("http://www.bbc.co.uk")
		// 	.post("/qsp/gateway/http/js/signonService/signonByUser")
		// 	.reply(200, {
		// 		data: "hello world this is just a test"
		// 	});

		// //console.log(scope.isDone());
		// console.log(nock.isDone());

		//Empty reports folder

	});

	this.After(async () => {
	//	console.log(nock.isDone());
		//const getBrowserHandle = await driver.getBrowser();
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
