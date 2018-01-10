const Application = require("./application").Application;
const NewApplication = require("./new-application").NewApplication;
const SelectPermit = require("./select-permit").SelectPermit;
const TaskList = require("./task-list").TaskList;
const UploadTechCompetency = require("./upload-tech-competency").UploadTechCompetency;
const Fakes = require("./fakes").Fakes;

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
			fakes: Fakes
		};
	}

	create(name) {
		const pageClass = this.pages[name];
		if (pageClass === null) throw new Error("Page not found");
		return new pageClass(this.browser, this.testdata);
	}
}

module.exports.Factory = Factory;
