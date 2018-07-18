const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;
const PageObject = require("./page-object").PageObject;

class NewApplication extends PageObject {

	async startApplicationRadio() {
		return this.browser.wait(until.elementLocated(By.id("start-application")), 5 * 20000);
	}

	async openApplicationRadio() {
		return this.browser.wait(until.elementLocated(By.id("open-application")), 5 * 20000);
	}

}

module.exports.NewApplication = NewApplication;
