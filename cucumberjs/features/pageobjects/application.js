const config = require("../../../config").config;
const configCRM = require("../../../configCRM").configCRM;
const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

const fs = require("fs");

class Application {

	constructor(browser) {
		this.browser = browser;
	}

	// async getTitleOfThePage() {
    //     return this.browser.wait(until.elementLocated(By.id("page-heading")), 5 * 20000);
	// }
	
	// async getTextElement(element) {
    //     return await element.getText();
    // }

	async launch(appConfiguration) {
		const args = process.argv;
		await this.browser.get(config.appUrl);
		await this.browser.wait(async () => (
			await this.browser.wait(appConfiguration.getReadyState()) === "complete"
		), 10000);
	}


	async takeScreenshots(filename) {
		const filenameNoSpecialChars = filename.replace(/[^a-zA-Z ]/g, "");
		const titleDateStamp = filenameNoSpecialChars + Date.now() + ".png";
		if (!fs.existsSync('MartinScreenshots')){
			fs.mkdirSync('MartinScreenshots');
		}
		this.browser.takeScreenshot().then(function(data){
			var base64Data = data.replace(/^data:image\/png;base64,/,"")
			fs.writeFile('MartinScreenshots/'+titleDateStamp, base64Data, 'base64', function(err) {
				 if(err) console.log(err);
			});
		 });
	  };

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
