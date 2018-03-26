const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class SelectPayment {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }



    async getTextElement(element) {
        return element.getText();
    }

    async bacsPaymentRadio() {
        return this.browser.wait(until.elementLocated(By.id("bacs-payment")), 5 * 20000);
    }

    async cardPaymentRadio() {
        return this.browser.wait(until.elementLocated(By.id("card-payment")), 5 * 20000);
    }

    async applicationNumber() {
        return this.browser.wait(until.elementLocated(By.id("application-name")), 5 * 20000);
    }

    
    async sendApplicationButton() {
        return this.browser.wait(until.elementLocated(By.id("submit-button")), 5 * 20000);
    }

}

module.exports.SelectPayment = SelectPayment;