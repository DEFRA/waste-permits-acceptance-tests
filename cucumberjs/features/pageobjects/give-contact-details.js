const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class GiveContactDetails {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }


    async firstNameField() {
        return this.browser.wait(until.elementLocated(By.id("first-name")), 5 * 20000);
    }

    async lastNameField() {
        return this.browser.wait(until.elementLocated(By.id("last-name")), 5 * 20000);
    }

    async agentCompanyCheckBox() {
        return this.browser.wait(until.elementLocated(By.id("is-contact-an-agent")), 5 * 20000);
    }

    async agentCompanyField() {
        return this.browser.wait(until.elementLocated(By.id("agent-company")), 5 * 20000);
    }

    async telephoneField() {
        return this.browser.wait(until.elementLocated(By.id("telephone")), 5 * 20000);
    }

    async emailField() {
        return this.browser.wait(until.elementLocated(By.id("email")), 5 * 20000);
    }

    async companySecretaryEmailField() {
        return this.browser.wait(until.elementLocated(By.id("company-secretary-email")), 5 * 20000);
    }

    async errorSummaryField() {
        return this.browser.wait(until.elementLocated(By.id("error-summary")), 5 * 20000);
    }

    async getTextElement(element) {
        return element.getText();
    }
}

module.exports.GiveContactDetails = GiveContactDetails;