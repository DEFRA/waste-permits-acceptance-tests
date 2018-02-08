const Application = require("./application").Application;
const NewApplication = require("./new-application").NewApplication;
const SelectPermit = require("./select-permit").SelectPermit;
const TaskList = require("./task-list").TaskList;
const UploadTechCompetency = require("./upload-tech-competency").UploadTechCompetency;
const LoginCRM = require("./login-crm").LoginCRM;
const Fakes = require("./fakes").Fakes;
const ConfirmRules = require("./confirm-meet-the-rules").ConfirmRules;
const GiveContactDetails = require("./give-contact-details").GiveContactDetails;


class Factory {

	constructor(browser, testdata) {
		this.browser = browser;
		this.testdata = testdata;
		this.pages = {
			application: Application,
			newapplication: NewApplication,
			uploadtechcompetency: UploadTechCompetency,
			selectpermit: SelectPermit,
			tasklist: TaskList,
			confirmrules: ConfirmRules,
			logincrm: LoginCRM,
			fakes: Fakes,
			givecontactdetails: GiveContactDetails
		};
	}

	create(name) {
		const pageClass = this.pages[name];
		if (pageClass === null) throw new Error("Page not found");
		return new pageClass(this.browser, this.testdata);
	}
}

module.exports.Factory = Factory;
