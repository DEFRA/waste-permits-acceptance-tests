const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;
const PageObject = require("./page-object").PageObject;

class AddressPageObject extends PageObject {
	async manualAddressLink() {
		return this.browser.wait(until.elementLocated(By.id("manual-address-link")), 5 * 20000);
	}

	async buildingNameOrNumberField() {
		return this.browser.wait(until.elementLocated(By.id("building-name-or-number")), 5 * 20000);
	}

	async addressLine1Field() {
		return this.browser.wait(until.elementLocated(By.id("address-line-1")), 5 * 20000);
	}

	async addressLine2Field() {
		return this.browser.wait(until.elementLocated(By.id("address-line-2")), 5 * 20000);
	}

	async townOrCityField() {
		return this.browser.wait(until.elementLocated(By.id("town-or-city")), 5 * 20000);
	}

	async postCodeEntryField() {
		return this.browser.wait(until.elementLocated(By.id("postcode")), 5 * 20000);
	}
}

module.exports.AddressPageObject = AddressPageObject;
