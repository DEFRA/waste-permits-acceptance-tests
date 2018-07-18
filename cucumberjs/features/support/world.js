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

	console.log("PARAM" + JSON.stringify(parameters));
	const browser = driver.getBrowser(parameters);
	this.testdata = new TestData(assetsJson);
	this.pageFactory = new Factory(browser, this.testdata);
	this.newApplication = this.pageFactory.create("newapplication");
	this.selectPermit = this.pageFactory.create("selectpermit");
	this.selectPayment = this.pageFactory.create("selectpayment");
	this.saveApplication = this.pageFactory.create("saveapplication");
	this.taskList = this.pageFactory.create("tasklist");
	this.checkCost = this.pageFactory.create("checkcost");
	this.loginCRM = this.pageFactory.create("logincrm");
	this.confirmRules = this.pageFactory.create("confirmrules");
	this.giveContactDetails = this.pageFactory.create("givecontactdetails");
	this.giveCompanyDetails = this.pageFactory.create("givecompanydetails");
	this.giveInvoicingDetails = this.pageFactory.create("giveinvoicingdetails");
	this.uploadTechCompetency = this.pageFactory.create("uploadtechcompetency");
	this.confirmConfidentiality = this.pageFactory.create("confirmConfidentiality");
	this.giveSiteNameLocation = this.pageFactory.create("givesitenamelocation");
	this.permitFor = this.pageFactory.create("permitfor");
	this.permitHolderDetails = this.pageFactory.create("permitholderdetails");
    this.wasteRecoveryPlan = this.pageFactory.create("wasterecoveryplan");
    this.firePreventionPlan = this.pageFactory.create("firepreventionplan");
	this.confirmSuitableStorageArea = this.pageFactory.create("confirmsuitablestoragearea");

	this.parameters = parameters;

	// Create page objects
	this.application = this.pageFactory.create("application");
	this.fakes = this.pageFactory.create("fakes");

	// Config injection
	this.appConfiguration = new AppConfiguration(browser);

};

module.exports.getWorldParameters = () => params;
