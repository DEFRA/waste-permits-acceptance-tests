const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;
const PageObject = require("./page-object").PageObject;

class ConfirmSuitableStorageArea extends PageObject {
	async sewerRadio() {
		return this.browser.wait(until.elementLocated(By.id("sewer")), 5 * 20000);
	}

	async blindSumpRadio() {
		return this.browser.wait(until.elementLocated(By.id("blind-sump")), 5 * 20000);
	}

	async oilSeparatorRadio() {
		return this.browser.wait(until.elementLocated(By.id("oil-separator")), 5 * 20000);
	}

	async waterCourseRadio() {
		return this.browser.wait(until.elementLocated(By.id("watercourse")), 5 * 20000);
	}
}

module.exports.ConfirmSuitableStorageArea = ConfirmSuitableStorageArea;
