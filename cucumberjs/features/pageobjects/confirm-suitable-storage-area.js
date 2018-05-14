const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class ConfirmSuitableStorageArea {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    async sewerRadio() {
        return this.browser.wait(until.elementLocated(By.id("sewer")), 5 * 20000);
    }

    async blindSumpRadio() {
        return this.browser.wait(until.elementLocated(By.id("blind-sump")), 5 * 20000);
    }

    async oilSeparatorRadio() {
        return this.browser.wait(until.elementLocated(By.id("oil-separator")), 5 * 20000);
    }

    async waterCourseRadio() {
        return this.browser.wait(until.elementLocated(By.id("watercourse")), 5 * 20000);
    }

    async continueButton() {
        return this.browser.wait(until.elementLocated(By.id("submit-button")), 5 * 20000);
    }
}

module.exports.ConfirmSuitableStorageArea = ConfirmSuitableStorageArea;