const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class SelectPermit {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    async permitSR2010No4Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-4-input")), 5 * 20000);
    }

    async permitSR2010No4Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-4-name")), 5 * 20000);
    }

    async permitSR2010No4Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-4-code")), 5 * 20000);
    }

    async permitSR2010No12Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-12-input")), 5 * 20000);
    }

    async permitSR2010No12Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-12-name")), 5 * 20000);
    }

    async permitSR2010No12Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-12-weight")), 5 * 20000);
    }

    async permitSR2010No12Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-12-code")), 5 * 20000);
    }

    async permitSR2015No17Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-17-input")), 5 * 20000);
    }

    async permitSR2015No17Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-17-name")), 5 * 20000);
    }

    async permitSR2015No17Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-17-weight")), 5 * 20000);
    }

    async permitSR2015No17Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-17-code")), 5 * 20000);
    }

    //Radio
    async permitSR2010No6Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-6-input")), 5 * 20000);
    }

    //Name
    async permitSR2010No6Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-6-name")), 5 * 20000);
    }

    //weight    
    async permitSR2010No6Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-6-weight")), 5 * 20000);
    }

    async permitSR2010No6Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-6-code")), 5 * 20000);
    }

    async permitSR2010No5Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-5-input")), 5 * 20000);
    }

    async permitSR2010No5Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-5-name")), 5 * 20000);
    }

    async permitSR2010No5Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-5-weight")), 5 * 20000);
    }

    async permitSR2010No5Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-5-code")), 5 * 20000);
    }

    async permitSR2010No11Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-11-input")), 5 * 20000);
    }

    async permitSR2010No11Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-11-name")), 5 * 20000);
    }

    async permitSR2010No11Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-11-weight")), 5 * 20000);
    }

    async permitSR2010No11Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-11-code")), 5 * 20000);
    }

    async permitSR2008No27Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-27-input")), 5 * 20000);
    }

    async permitSR2008No27Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-27-name")), 5 * 20000);
    }

    async permitSR2008No27Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-27-weight")), 5 * 20000);
    }

    async permitSR2008No27Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-27-code")), 5 * 20000);
    }

    async permitSR2015No18Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-18-input")), 5 * 20000);
    }
    async permitSR2015No18Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-18-name")), 5 * 20000);
    }

    async permitSR2015No18Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-18-weight")), 5 * 20000);
    }

    async permitSR2015No18Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-18-code")), 5 * 20000);
    }

    ////////////////////////////////

    

    async permitSR2015No13Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-13-input")), 5 * 20000);
    }

    async permitSR2010No5Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-4-weight")), 5 * 20000);
    }











    async continueButton() {
        return this.browser.wait(until.elementLocated(By.id("submit-button")), 5 * 20000);
    }

    async getTextElement(element) {
        return element.getText();
    }

}

module.exports.SelectPermit = SelectPermit;