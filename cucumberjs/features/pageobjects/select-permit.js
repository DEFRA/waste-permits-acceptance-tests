const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class SelectPermit {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    permitSR2010No4Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-4-input")), 5 * 2000);
    }

    permitSR2010No6Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-6-input")), 5 * 2000);
    }

    permitSR2010No7Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-7-input")), 5 * 2000);
    }

    permitSR2010No11Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-11-input")), 5 * 2000);
    }

    permitSR2010No27Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-27-input")), 5 * 2000);
    }

    continueButton() {
        return this.browser.wait(until.elementLocated(By.id("submit-button")), 5 * 2000);
    }


}

module.exports.SelectPermit = SelectPermit;