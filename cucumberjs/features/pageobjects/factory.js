const Application = require("./application").Application;
const NewApplication = require("./new-application").NewApplication;
const SelectPermit = require("./select-permit").SelectPermit;
const SelectPayment = require("./select-payment").SelectPayment;
const TaskList = require("./task-list").TaskList;
const UploadTechCompetency = require("./upload-tech-competency").UploadTechCompetency;
const LoginCRM = require("./login-crm").LoginCRM;
const Fakes = require("./fakes").Fakes;
const ConfirmRules = require("./confirm-meet-the-rules").ConfirmRules;
const GiveContactDetails = require("./give-contact-details").GiveContactDetails;
const GiveCompanyDetails = require("./give-company-details").GiveCompanyDetails;
const GiveInvoicingDetails = require("./give-invoicing-details").GiveInvoicingDetails;
const GiveSiteNameLocation = require("./give-site-name-location").GiveSiteNameLocation;
const ConfirmConfidentiality = require("./confirm-confidentiality-needs").ConfirmConfidentiality;
const PermitFor = require("./permit-for").PermitFor;


class Factory {

	constructor(browser, testdata) {
		this.browser = browser;
		this.testdata = testdata;
		this.pages = {
			application: Application,
			newapplication: NewApplication,
			uploadtechcompetency: UploadTechCompetency,
			selectpermit: SelectPermit,
			selectpayment: SelectPayment,
			tasklist: TaskList,
			confirmrules: ConfirmRules,
			logincrm: LoginCRM,
			fakes: Fakes,
			givecontactdetails: GiveContactDetails,
			givecompanydetails: GiveCompanyDetails,
			givesitenamelocation: GiveSiteNameLocation,
			giveinvoicingdetails: GiveInvoicingDetails,
			confirmConfidentiality: ConfirmConfidentiality,
			permitfor: PermitFor

		};
	}

	create(name) {
		const pageClass = this.pages[name];
		if (pageClass === null) throw new Error("Page not found");
		return new pageClass(this.browser, this.testdata);
	}
}

module.exports.Factory = Factory;
