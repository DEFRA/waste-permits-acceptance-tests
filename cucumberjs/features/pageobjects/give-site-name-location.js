const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class GiveSiteNameLocation {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    //What's the site name?
    //
    async siteNameField() {
        return this.browser.wait(until.elementLocated(By.id("site-name")), 5 * 20000);
    }
    //What's the grid reference for the centre of the site?
    //
    async siteGridReferenceField() {
        return this.browser.wait(until.elementLocated(By.id("site-grid-reference")), 5 * 20000);
    }

}

module.exports.GiveSiteNameLocation = GiveSiteNameLocation;