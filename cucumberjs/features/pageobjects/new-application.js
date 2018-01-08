const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class NewApplication {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    waitUntilLoaded(title) {
        return this.browser.wait(until.elementLocated(By.xpath(`//h1[contains(text(),"${title}")]`)), 5 * 2000);
    }

    startApplicationRadio() {
        return this.browser.wait(until.elementLocated(By.id("start-application")), 5 * 2000);
    }

    openApplicationRadio() {
        return this.browser.wait(until.elementLocated(By.id("open-application")), 5 * 2000);
    }

    continueButton() {
        return this.browser.wait(until.elementLocated(By.id("submit-button")), 5 * 2000);
    }


}

module.exports.NewApplication = NewApplication;