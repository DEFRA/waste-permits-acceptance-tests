const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;
const UploadPageObject = require("./upload-page-object").UploadPageObject;

class WasteRecoveryPlan extends UploadPageObject {
	async yesRadio() {
		return this.browser.wait(until.elementLocated(By.id("selection-yes-input")), 5 * 20000);
	}
}

module.exports.WasteRecoveryPlan = WasteRecoveryPlan;
