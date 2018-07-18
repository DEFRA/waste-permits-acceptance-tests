const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;
const PageObject = require("./page-object").PageObject;

class UploadPageObject extends PageObject {
	async chooseFile() {
		return this.browser.wait(until.elementLocated(By.id("file")), 5 * 20000);
	}

	async uploadFile() {
		const file = await this.chooseFile();
		const download = require("image-downloader");

        // Download to a directory and save with the original filename
		const options = {
			url: "http://onlinepubs.trb.org/onlinepubs/crp/docs/CRP_Word-Template-Guide.doc",
			dest: __dirname
		};

		const { filename } = await download.image(options);

		await file.sendKeys(filename);
		await file.submit();
	}
}

module.exports.UploadPageObject = UploadPageObject;
