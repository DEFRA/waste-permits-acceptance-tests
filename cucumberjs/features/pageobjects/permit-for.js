const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class PermitFor {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    async waitUntilLoaded(title) {
        return this.browser.wait(until.elementLocated(By.id("page-heading")), 5 * 20000);
    }

    async dummyCategoryRadio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-category-dummy-input")), 5 * 20000);
    }

    async dummyCategoryLabel() {
        return this.browser.wait(until.elementLocated(By.id("chosen-category-dummy-label")), 5 * 20000);
    }

    async floodRiskActivitiesRadio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-category-flood-input")), 5 * 20000);
    }

    async floodRiskActivitiesLabel() {
        return this.browser.wait(until.elementLocated(By.id("chosen-category-flood-label")), 5 * 8000);
    }

    
    async radioactiveSubstanceNonNuclearSiteRadio(title) {
        return this.browser.wait(until.elementLocated(By.id("chosen-category-radioactive-input")), 5 * 20000);
    }

    async radioactiveSubstanceNonNuclearSiteLabel() {
        return this.browser.wait(until.elementLocated(By.id("chosen-category-radioactive-label")), 5 * 20000);
    }

    async waterDischargesRadio() {
        return this.browser.wait(until.elementLocated(By.id("chosen-category-water-input")), 5 * 20000);
    }

    async waterDischargesLabel() {
        return this.browser.wait(until.elementLocated(By.id("chosen-category-water-label")), 5 * 8000);
    }

    async cantFindPermitLink() {
        return this.browser.wait(until.elementLocated(By.id("summary")), 5 * 8000);
    }


}

module.exports.PermitFor = PermitFor;