const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;
let exp_no;
let id_aggr;

class GiveCompanyDetails {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    async enterCompanyNumberField() {
        return this.browser.wait(until.elementLocated(By.id("company-number")), 5 * 20000);
    }

    async overseasCompanyLink() {
        return this.browser.wait(until.elementLocated(By.id("overseas-help")), 5 * 20000);
    }


    async companyNumberText() {
        return this.browser.wait(until.elementLocated(By.id("company-number-value")), 5 * 20000);
    }

    async enterDifferentCompanyLink() {
        return this.browser.wait(until.elementLocated(By.id("enter-different-number-company-exists-link")), 5 * 20000);
    }

    async companyNameField() {
        return this.browser.wait(until.elementLocated(By.id("company-name")), 5 * 20000);
    }

    async companyAddressField() {
        return this.browser.wait(until.elementLocated(By.id("company-address")), 5 * 20000);
    }

    async agentCompanyField() {
        return this.browser.wait(until.elementLocated(By.id("not-the-registered-office-details")), 5 * 20000);
    }

    async differentTradingNameCheckbox() {
        return this.browser.wait(until.elementLocated(By.id("use-business-trading-name")), 5 * 20000);
    }

    async businessTradingName() {
        return this.browser.wait(until.elementLocated(By.id("business-trading-name")), 5 * 20000);
    }

    async errorSummaryField() {
        return this.browser.wait(until.elementLocated(By.id("error-summary")), 5 * 20000);
    }

    async getTitleOfThePage() {
        return this.browser.wait(until.elementLocated(By.id("page-heading")), 5 * 20000);
    }
    
    async getTitleOfThePageGovPay() {
        return this.browser.wait(until.elementLocated(By.className("form-title")), 5 * 20000);
    }

    async getTextElement(element) {
        return element.getText();
    }

    async directorNameField(no) {
        exp_no= parseInt(no)-1;
        id_aggr = "director-name-" + exp_no;
        return this.browser.wait(until.elementLocated(By.id(id_aggr)), 5 * 20000);
    }

    async directorDOBField() {
        return this.browser.wait(until.elementLocated(By.id("director-dob")), 5 * 20000);
    }

    async directorDOBDayField(no) {
        exp_no= parseInt(no)-1;
        id_aggr = "director-dob-day-" + exp_no;
        return this.browser.wait(until.elementLocated(By.id(id_aggr)), 5 * 20000);
    }

    async directorDOBMonthYearField(no) {
        exp_no= parseInt(no)-1;
        id_aggr = "dob-formatted-month-year-" + exp_no;
        return this.browser.wait(until.elementLocated(By.id(id_aggr)), 5 * 20000);
    }

    async declaredRadio() {
        return this.browser.wait(until.elementLocated(By.id("declared")), 5 * 20000);
    }

    async declaredTextField() {
        return this.browser.wait(until.elementLocated(By.id("declaration-details")), 5 * 20000);
    }
    
    async nonDeclaredRadio() {
        return this.browser.wait(until.elementLocated(By.id("none-declared")), 5 * 20000);
    }
}

module.exports.GiveCompanyDetails = GiveCompanyDetails;