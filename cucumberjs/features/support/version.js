class Version {

	constructor(browser) {
		this.browser = browser;
	}

	getFrontEndVersion() {
		return this.browser.executeScript("return VersionPath");
	}

	getBackEndVersion() {
		return this.browser.executeScript("return VersionPath");
	}

	
}
module.exports.Version = Version;
