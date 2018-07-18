const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;
const PageObject = require("./page-object").PageObject;

class SaveApplication extends PageObject {
	async email() {
		return this.browser.wait(until.elementLocated(By.id("save-and-return-email")), 5 * 20000);
	}

	async gotemail() {
		return this.browser.wait(until.elementLocated(By.id("got-email")), 5 * 20000);
	}

	async notgotemail() {
		return this.browser.wait(until.elementLocated(By.id("not-got-email")), 5 * 20000);
	}
}

module.exports.SaveApplication = SaveApplication;
