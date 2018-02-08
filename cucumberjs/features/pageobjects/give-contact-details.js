const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class GiveContactDetails {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }


    firstNameField() {
        return this.browser.wait(until.elementLocated(By.id("first-name")), 5 * 20000);
    }

    lastNameField() {
        return this.browser.wait(until.elementLocated(By.id("last-name")), 5 * 20000);
    }

    agentCompanyCheckBox() {
        return this.browser.wait(until.elementLocated(By.id("is-contact-an-agent")), 5 * 20000);
    }

    agentCompanyField() {
        return this.browser.wait(until.elementLocated(By.id("agent-company")), 5 * 20000);
    }

    telephoneField() {
        return this.browser.wait(until.elementLocated(By.id("telephone")), 5 * 20000);
    }

    emailField() {
        return this.browser.wait(until.elementLocated(By.id("email")), 5 * 20000);
    }

    companySecretaryEmailField() {
        return this.browser.wait(until.elementLocated(By.id("company-secretary-email")), 5 * 20000);
    }
}

module.exports.GiveContactDetails = GiveContactDetails;