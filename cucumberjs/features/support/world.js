const driver = require("./driver").driver;
const Factory = require("../pageobjects/factory").Factory;
const AppConfiguration = require("./app-configuration").AppConfiguration;
const TestData = require("./test-data").TestData;
const jsel = require("jsel");
const json1 = require("../test_data_mapping/assets.json");
const assetsJson = jsel(json1);

let params;

module.exports.World = function World(parameters) {

	params = parameters;

	const browser = driver.getBrowser(parameters);
	this.testdata = new TestData(assetsJson);
	this.pageFactory = new Factory(browser, this.testdata);
	this.parameters = parameters;

	// Create page objects
	this.application = this.pageFactory.create("application");
	this.fakes = this.pageFactory.create("fakes");

	// Config injection
	this.appConfiguration = new AppConfiguration(browser);


};

module.exports.getWorldParameters = () => params;
