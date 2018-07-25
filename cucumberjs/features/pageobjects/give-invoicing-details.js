const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class GiveInvoicingDetails {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    async postCodeField() {
        return this.browser.wait(until.elementLocated(By.id("postcode")), 5 * 20000);
    }

    async enterAddressManuallyLink() {
        return this.browser.wait(until.elementLocated(By.id("no-postcode-link-text")), 5 * 20000);
    }

    async findAddress() {
        return this.browser.wait(until.elementLocated(By.id("submit-button")), 5 * 20000);
    }

    //
    async changePostCodeLink() {
        return this.browser.wait(until.elementLocated(By.id("change-postcode-link")), 5 * 20000);
    }

    getTextElement(element) {
        return element.getText();
    }

    //
    async selectAddressDropdown() {
        return this.browser.wait(until.elementLocated(By.id("select-address")), 5 * 20000);
    }

 
    async selectAddressDropdownText() {
        return this.browser.wait(until.elementLocated(By.css("option[value='452010230']")), 5 * 20000);;
    }

    async manualAddressEntryLink() {
        return this.browser.wait(until.elementLocated(By.id("manual-address-link")), 5 * 20000);
    }

//
async buildingNameOrNumberField() {
    return this.browser.wait(until.elementLocated(By.id("building-name-or-number")), 5 * 20000);
}

//
async addressLine1Field() {
    return this.browser.wait(until.elementLocated(By.id("address-line-1")), 5 * 20000);
}

//
async addressLine2Field() {
    return this.browser.wait(until.elementLocated(By.id("address-line-2")), 5 * 20000);
}

//
async townOrCityField() {
    return this.browser.wait(until.elementLocated(By.id("town-or-city")), 5 * 20000);
}

//
async postCodeEntryField() {
    return this.browser.wait(until.elementLocated(By.id("postcode")), 5 * 20000);
}

       
}

module.exports.GiveInvoicingDetails = GiveInvoicingDetails;