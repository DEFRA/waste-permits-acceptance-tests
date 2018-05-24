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

    async cardNoField() {
        return this.browser.wait(until.elementLocated(By.id("card-no")), 5 * 20000);
    }

    async expiryMonthField() {
        return this.browser.wait(until.elementLocated(By.id("expiry-month")), 5 * 20000);
    }

    async expiryYearField() {
        return this.browser.wait(until.elementLocated(By.id("expiry-year")), 5 * 20000);
    }

    async cardholderNameField() {
        return this.browser.wait(until.elementLocated(By.id("cardholder-name")), 5 * 20000);
    }

    async cvcField() {
        return this.browser.wait(until.elementLocated(By.id("cvc")), 5 * 20000);
    }

    async addrLine1Field() {
        return this.browser.wait(until.elementLocated(By.id("address-line-1")), 5 * 20000);
    }

    async addrLine2Field() {
        return this.browser.wait(until.elementLocated(By.id("address-line-2")), 5 * 20000);
    }

    async addrCityField() {
        return this.browser.wait(until.elementLocated(By.id("address-city")), 5 * 20000);
    }

    async addrPostcodeField() {
        return this.browser.wait(until.elementLocated(By.id("address-postcode")), 5 * 20000);
    }

    async emailField() {
        return this.browser.wait(until.elementLocated(By.id("email")), 5 * 20000);
    }

    async submitCardButton() {
        return this.browser.wait(until.elementLocated(By.id("submit-card-details")), 5 * 20000);
    }

    //
    async confirmPaymentButton() {
        return this.browser.wait(until.elementLocated(By.id("confirm")), 5 * 20000);
    }
    //
    async cancelPaymentButton() {
        return this.browser.wait(until.elementLocated(By.id("cancel-payment")), 5 * 20000);
    }

    // this is application number
    async applicationNumberText() {
        return this.browser.wait(until.elementLocated(By.id("application-name")), 5 * 20000);
    }

    async returntoApplicationLink() {
        return this.browser.wait(until.elementLocated(By.id("return-url")), 5 * 20000);
    }

        
}

module.exports.SelectPayment = SelectPayment;