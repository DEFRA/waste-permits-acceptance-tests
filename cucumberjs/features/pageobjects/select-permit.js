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

    async permitSR2015No18Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-18-input")), 5 * 20000);
    }

    async permitSR2015No13Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-13-input")), 5 * 20000);
    }

    async permitSR2010No5Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-4-weight")), 5 * 20000);
    }

    async permitSR2010No4Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-4-code")), 5 * 20000);
    }

    async permitSR2010No12Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-12-input")), 5 * 20000);
    }

    async permitSR2012No12Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-12-input")), 5 * 20000);
    }
    async permitSR2012No12Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-12-name")), 5 * 20000);
    }

    async permitSR2012No12Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-12-weight")), 5 * 20000);
    }

    async permitSR2012No12Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-12-code")), 5 * 20000);
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

    async permitSR2015No39Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-39-input")), 5 * 20000);
    }

    async permitSR2015No6Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-6-input")), 5 * 20000);
    }

    async permitSR2008No9Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-9-input")), 5 * 20000);
    }

    async permitSR2015No4Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-4-input")), 5 * 20000);
    }

    async permitSR2015No6Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-6-name")), 5 * 20000);
    }

    async permitSR2015No6Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-6-weight")), 5 * 20000);
    }
    async permitSR2015No6Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-6-input")), 5 * 20000);
    }


    async permitSR2012No10Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-10-input")), 5 * 20000);
    }
    async permitSR2012No3Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-3-input")), 5 * 20000);
    }
    async permitSR2010No14Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-14-input")), 5 * 20000);
    }
    async permitSR2011No1Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2011-no-1-input")), 5 * 20000);
    }
    async permitSR2012No7Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-7-input")), 5 * 20000);
    }

    async permitSR2008No19250kteRadio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-19-250kte-input")), 5 * 20000);
    }

    async permitSR2008No1975kteRadio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-19-75kte--input")), 5 * 20000);
    }
    async permitSR2012No15Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-15-input")), 5 * 20000);
    }

    async permitSR2015No14Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-14-input")), 5 * 20000);
    }

    async permitSR2015No16Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-16-input")), 5 * 20000);
    }

    async permitSR2008No22Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-22--input")), 5 * 20000);
    }

    async permitSR2009No7Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2009-no-7-input")), 5 * 20000);
    }

    async permitSR2015No15Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-15-input")), 5 * 20000);
    }

    async permitSR2015No3Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-3-input")), 5 * 20000);
    }

    async permitSR2015No2Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-2-input")), 5 * 20000);
    }

    async permitSR2012No10Name() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-10-name")), 5 * 20000);
    }

    async permitSR2012No10Weight() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-10-weight")), 5 * 20000);
    }

    async permitSR2012No10Code() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-10-code")), 5 * 20000);
    }

    async continueButton() {
        return this.browser.wait(until.elementLocated(By.id("submit-button")), 5 * 20000);
    }



    async permitSR2015No24Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-24-input")), 5 * 20000);
    }
    async permitSR2015No23Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-23-input")), 5 * 20000);
    }
    async permitSR2015No22Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-22-input")), 5 * 20000);
    }
    async permitSR2010No12Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-12-input")), 5 * 20000);
    }
    async permitSR2013No1Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2013-no-1-input")), 5 * 20000);
    }
    async permitSR2010No17Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-17-input")), 5 * 20000);
    }
    async permitSR2010No18Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2010-no-18-input")), 5 * 20000);
    }
    async permitSR2015No21Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-21-input")), 5 * 20000);
    }
    async permitSR2015No2Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-2-input")), 5 * 20000);
    }


    async permitSR2015No22Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-22-input")), 5 * 20000);
    }
    async permitSR2015No8Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-8-input")), 5 * 20000);
    }
    async permitSR2015No9Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-9-input")), 5 * 20000);
    }
    async permitSR2015No5Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-5-input")), 5 * 20000);
    }
    async permitSR2015No10Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-10-input")), 5 * 20000);
    }
    async permitSR2015No11Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-11-input")), 11 * 20000);
    }
    async permitSR2008No24Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-24-input")), 11 * 20000);
    }
    async permitSR2008No25Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-25-input")), 11 * 20000);
    }

    async permitSR2015No7Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-7-input")), 11 * 20000);
    }

    async permitSR2008No10Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-10-input")), 11 * 20000);
    }

    async permitSR2009No5Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2009-no-5-input")), 11 * 20000);
    }

    async permitSR2009No6Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2009-no-6-input")), 11 * 20000);
    }

    async manualPermitLink() {
        return this.browser.wait(until.elementLocated(By.id("standard-rules-link")), 11 * 20000);
    }

    async floodRiskLink() {
        return this.browser.wait(until.elementLocated(By.id("flood-link")), 11 * 20000);
    }

    async waterLink() {
        return this.browser.wait(until.elementLocated(By.id("water-link")), 11 * 20000);
    }

    async radioActiveLink() {
        return this.browser.wait(until.elementLocated(By.id("radioactive-link")), 11 * 20000);
    }

    async changeSelectionLink() {
        return this.browser.wait(until.elementLocated(By.id("change-selection-link")),5*20000);
    }

    async permitSR2008No11Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2008-no-11-input")), 11 * 20000);
    }

    async permitSR2009No6Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2009-no-6-input")), 11 * 20000);
    }

    async permitSR2015No20Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-20-input")), 11 * 20000);
    }

    async permitSR2015No19Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-19-input")), 11 * 20000);
    }

    async permitSR2012No11Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-11-input")), 11 * 20000);
    }
    async permitSR2012No9Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-9-input")), 11 * 20000);
    }
    async permitSR2009No4Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2009-no-4-input")), 11 * 20000);
    }
    async permitSR2012No4Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-4-input")), 11 * 20000);
    }
    async permitSR2012No8Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-8-input")), 11 * 20000);
    }
    async permitSR2009No3Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2009-no-3-input")), 11 * 20000);
    }
    async permitSR2015No1Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2015-no-1-input")), 11 * 20000);
    }
    async permitSR2014No2Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2014-no-2-input")), 11 * 20000);
    }
    async permitSR2009No8Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2009-no-8-input")), 11 * 20000);
    }
    async permitSR2009No2Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2009-no-2-input")), 11 * 20000);
    }
    async permitSR2012No13Radio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-permit-sr2012-no-13-input")), 11 * 20000);
    }

    async elementHrefAttribute(element) {
        return element.getAttribute("href");
    }

    async getTextElement(element) {
        return element.getText();
    }

}

module.exports.SelectPermit = SelectPermit;