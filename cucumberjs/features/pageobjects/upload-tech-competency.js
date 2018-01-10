const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class UploadTechCompetency {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }


    wamitabLink() {
        return this.browser.wait(until.elementLocated(By.id("wamitab")), 5 * 2000);
    }


    gettingQualification() {
        return this.browser.wait(until.elementLocated(By.id("getting-qualification")), 5 * 2000);
    }

    deemed() {
        return this.browser.wait(until.elementLocated(By.id("deemed")), 5 * 2000);
    }


    esaEU() {
        return this.browser.wait(until.elementLocated(By.id("esa-eu")), 5 * 2000);
    }

}

module.exports.UploadTechCompetency = UploadTechCompetency;