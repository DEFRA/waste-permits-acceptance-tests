const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class PageObject {

	constructor(browser, testdata) {
		this.browser = browser;
		this.testdata = testdata;
	}

	async waitUntilLoaded(id = "page-heading") {
		return this.browser.wait(until.elementLocated(By.id(id)), 5 * 20000);
	}

	async waitUntilLoadedGovUK() {
		return this.browser.wait(until.elementLocated(By.className("form-title")), 5 * 20000);
	}

	async continueButton() {
		return this.browser.wait(until.elementLocated(By.id("submit-button")), 5 * 8000);
	}

	async returnURL() {
		return this.browser.wait(until.elementLocated(By.id("return-url")), 5 * 30000);
	}

	getTextElement(element) {
		return element.getText();
	}

	async mainContent() {
		return this.waitFor("content");
	}

	async errorSummaryField() {
		return this.waitFor("error-summary");
	}

	async waitFor(id, timeout = 100000) {
		return this.browser.wait(until.elementLocated(By.id(id)), timeout);
	}

}

module.exports.PageObject = PageObject;
