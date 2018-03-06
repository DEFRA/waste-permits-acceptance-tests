const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class ConfirmConfidentiality {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    async decalredLabel() {
        return this.browser.wait(until.elementLocated(By.id("declared-label")), 5 * 20000);
    }

    async decalredRadio() {
        return this.browser.wait(until.elementLocated(By.id("declared")), 5 * 20000);
    }

    async nonDecalredLabel() {
        return this.browser.wait(until.elementLocated(By.id("none-declared-label")), 5 * 20000);
    }

    async nonDecalredRadio() {
        return this.browser.wait(until.elementLocated(By.id("none-declared")), 5 * 20000);
    }

    async declarationDetailsText() {
        return this.browser.wait(until.elementLocated(By.id("declaration-details")), 5 * 20000);
    }

    async continueButton() {
        return this.browser.wait(until.elementLocated(By.id("submit-button")), 5 * 20000);
    }

       
}

module.exports.ConfirmConfidentiality = ConfirmConfidentiality;