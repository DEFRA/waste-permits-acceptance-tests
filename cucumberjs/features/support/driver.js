const webdriver = require("selenium-webdriver");
const appRootDir = require("app-root-dir").get();
const encode = require("./chrome-util").base64EncodeCrx;
const config = require("../../../config").config;

require("chromedriver");
//require("geckodriver");
require("iedriver");

const PLATFORMS = {
	CHROME_PHONE: "chrome-phone",
	CHROME_DESKTOP: "chrome-desktop",
	CHROME_TABLET: "chrome-tablet",
	IE_DESKTOP: "ie-desktop",
	FIREFOX_DESKTOP: "firefox-desktop"
};

class Driver {

	constructor() {
		this.browser = undefined;
	}

	getChromeDesktopSpec(width, height) {
		return {
			browserName: "chrome",
			chromeOptions: {
				args: ["--window-size=" + width + "," + height]
			}
		};
	}

	getChromePhoneSpec(width, height) {
		return {
			browserName: "chrome",
			chromeOptions: {
				args: ["--window-size=" + width + "," + height],
				mobileEmulation: {
					userAgent: "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1"
				}
			}
		};
	}

	getChromeTabletSpec(width, height) {
		return {
			browserName: "chrome",
			chromeOptions: {
				args: ["--window-size=" + width + "," + height],
				mobileEmulation: {
					userAgent: "Mozilla/5.0 (Linux; Android 7.0; Pixel C Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/52.0.2743.98 Safari/537.36"
				}
			}
		};
	}

	getFirefoxDesktopSpec() {
		return {
			browserName: "firefox",
			marionette: true,
			acceptInsecureCerts: true
		};
	}

	getIeDesktopSpec() {
		return {
			browserName: "ie",
			ignoreProtectedModeSettings: true,
			ignoreZoomSetting: true,
			"ie.ensureCleanSession": true
		};
	}

	getDriverSpec(platform, width, height) {
		let spec;

		switch (platform) {
			case PLATFORMS.CHROME_PHONE:
				spec = this.getChromePhoneSpec(width, height);
				break;
			case PLATFORMS.CHROME_DESKTOP:
				spec = this.getChromeDesktopSpec(width, height);
				break;
			case PLATFORMS.CHROME_TABLET:
				spec = this.getChromeTabletSpec(width, height);
				break;
			case PLATFORMS.FIREFOX_DESKTOP:
				spec = this.getFirefoxDesktopSpec();
				break;
			case PLATFORMS.IE_DESKTOP:
				spec = this.getIeDesktopSpec();
		}
		return spec;
	}

	getBrowser(parameters) {
		if (!this.browser) {
			switch (parameters.platform) {
				case PLATFORMS.CHROME_PHONE:
				case PLATFORMS.CHROME_DESKTOP:
				case PLATFORMS.CHROME_TABLET:
					this.browser = new webdriver.Builder().withCapabilities(this.getDriverSpec(parameters.platform, parameters.width, parameters.height)).build();
					break;
				case PLATFORMS.FIREFOX_DESKTOP:
				case PLATFORMS.IE_DESKTOP:
					this.browser = new webdriver.Builder().withCapabilities(this.getDriverSpec(parameters.platform)).build();
					this.browser.manage().window().setSize(parameters.width, parameters.height);
					break;
				default:
					throw new Error("Unsupported platform");
			}
		}
		return this.browser;
	}

	quitBrowser() {
		const browser = this.browser;
		this.browser = null;
		return browser.quit();
	}
}

const _instance = new Driver();

module.exports.driver = _instance;
