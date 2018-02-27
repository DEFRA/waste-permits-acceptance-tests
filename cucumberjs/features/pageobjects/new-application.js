const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class NewApplication {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    async waitUntilLoaded(title) {
        return this.browser.wait(until.elementLocated(By.xpath(`//h1[contains(text(),"${title}")]`)), 5 * 20000);
    }

    async startApplicationRadio() {
        return this.browser.wait(until.elementLocated(By.id("start-application")), 5 * 20000);
    }

    async openApplicationRadio() {
        return this.browser.wait(until.elementLocated(By.id("open-application")), 5 * 20000);
    }

    async continueButton() {
        return this.browser.wait(until.elementLocated(By.id("submit-button")), 5 * 8000);
    }


}

module.exports.NewApplication = NewApplication;