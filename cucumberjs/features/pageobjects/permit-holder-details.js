const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;
const AddressPageObject = require("./address-page-object").AddressPageObject;

class PermitHolderDetails extends AddressPageObject {
	async firstNameField() {
		return this.browser.wait(until.elementLocated(By.id("first-name")), 5 * 20000);
	}

	async lastNameField() {
		return this.browser.wait(until.elementLocated(By.id("last-name")), 5 * 20000);
	}

	async dayField() {
		return this.browser.wait(until.elementLocated(By.id("dob-day")), 5 * 20000);
	}

	async monthField() {
		return this.browser.wait(until.elementLocated(By.id("dob-month")), 5 * 20000);
	}

	async yearField() {
		return this.browser.wait(until.elementLocated(By.id("dob-year")), 5 * 20000);
	}

	async tradingNameCheckbox() {
		return this.browser.wait(until.elementLocated(By.id("use-trading-name-on")), 5 * 20000);
	}

	async tradingNameField() {
		return this.browser.wait(until.elementLocated(By.id("trading-name")), 5 * 20000);
	}

	async emailField() {
		return this.browser.wait(until.elementLocated(By.id("email")), 5 * 20000);
	}

	async telephoneField() {
		return this.browser.wait(until.elementLocated(By.id("telephone")), 5 * 20000);
	}

}

module.exports.PermitHolderDetails = PermitHolderDetails;
