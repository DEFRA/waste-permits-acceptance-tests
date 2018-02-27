const config = require("../../../config").config;
const configCRM = require("../../../configCRM").configCRM;
const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class Application {

	constructor(browser) {
		this.browser = browser;
	}

	async launch(appConfiguration) {
		const args = process.argv;
		await this.browser.get(config.appUrl);
		await this.browser.wait(async () => (
			await this.browser.wait(appConfiguration.getReadyState()) === "complete"
		), 10000);
	}

	async launchCRM(appConfiguration) {
		await this.browser.get(config.appUrlCRM);
		await this.browser.wait(async () => (
			await this.browser.wait(appConfiguration.getReadyState()) === "complete"
		), 10000);
	}

	async findElementByMethod(method, parameters) {
		switch (method) {
			case "id":
				this.findElementByID(parameters);
				break;
			case "xpath":
				this.findElementByXpath(parameters);
		}

	}

	async findElementByID(parameters) {
		let foundElement;
		try {
			foundElement = await this.browser.wait(until.elementLocated(By.id(parameters)), 5 * 20000);
			console.log(foundElement);
		} catch (err) {
			throw err;
			//throw new Error(err + " NOT FOUND! " + parameters);
		}
		return foundElement;
	}

	async findElementByXpath(parameters) {
		let foundElement;
		try {
			foundElement = await this.browser.wait(until.elementLocated(By.xpath(parameters)), 5 * 20000);

		} catch (err) {
			if (err.state && err.state === "no such element") {
				throw new Error(err + " NOT FOUND! " + parameters);
			} else {
				browser.promise.rejected(err);
			}
		}
		return foundElement;
	}

}

module.exports.Application = Application;
