const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class TaskList {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    async waitUntilLoaded() {
        return this.browser.wait(until.elementLocated(By.xpath(`//span[contains(text(),"Task list:")]`)), 5 * 20000);
    }

    async getTextElement(element) {
        return element.getText();
    }

    async permitTypeText() {
        return this.browser.wait(until.elementLocated(By.id("standard-rule-name-and-code")), 5 * 20000);
    }

    async uploadTechnicalManagementQualificationsLink() {
        return this.browser.wait(until.elementLocated(By.id("upload-technical-management-qualifications-link")), 5 * 20000);
    }

    async giveInvoicingDetailsLink() {
        return this.browser.wait(until.elementLocated(By.id("invoicing-details-link")), 5 * 20000);
    }

    async uploadCompleted() {
        return this.browser.wait(until.elementLocated(By.id("upload-completed")), 5 * 20000);
    }
   
    async confirmDrainageCompleted() {
        return this.browser.wait(until.elementLocated(By.id("confirm-drainage-completed")), 5 * 20000);
    }

    async confirmRulesCompleted() {
        return this.browser.wait(until.elementLocated(By.id("operation-rules-completed")), 5 * 20000);
    }

    async uploadSitePlanCompleted() {
        return this.browser.wait(until.elementLocated(By.id("site-plan-completed")), 5 * 20000);
    }

    async confirmConfidentialityCompleted() {
        return this.browser.wait(until.elementLocated(By.id("confidentiality-completed")), 5 * 20000);
    }

    async giveCompanyDetailsCompleted() {
        return this.browser.wait(until.elementLocated(By.id("site-operator-completed")), 5 * 20000);
    }

    async giveContactDetailsCompleted() {
        return this.browser.wait(until.elementLocated(By.id("contact-details-completed")), 5 * 20000);
    }

    async giveInvoicingDetailsCompleted() {
        return this.browser.wait(until.elementLocated(By.id("invoicing-details-completed")), 5 * 20000);
    }

    async giveSiteNameAddressCompleted() {
        return this.browser.wait(until.elementLocated(By.id("site-name-completed")), 5 * 20000);
    }
    
    async uploadFirePreventionPlanCompleted() {
        return this.browser.wait(until.elementLocated(By.id("firepp-completed")), 5 * 20000);
    }
    async confirmThatYourOperationMeetsRulesLink() {
        return this.browser.wait(until.elementLocated(By.id("confirm-that-your-operation-meets-the-rules-link")), 5 * 20000);
    }

    async giveContactDetailsLink() {
        return this.browser.wait(until.elementLocated(By.id("give-contact-details-link")), 5 * 20000);
    }

    async confirmConfidentialityNeedsLink() {
        return this.browser.wait(until.elementLocated(By.id("confirm-confidentiality-needs-link")), 5 * 20000);
    }

    async givePermitHolderDetailsLink() {
        return this.browser.wait(until.elementLocated(By.id("give-permit-holder-details-link")), 5 * 20000);
    }

    async submitPayLink() {
        return this.browser.wait(until.elementLocated(By.id("submit-pay-link")), 5 * 20000);
    }

    async taskList() {
        return this.browser.wait(until.elementLocated(By.className("task-list")), 5 * 20000);
    }

    async siteNameAndLocationLink() {
        return this.browser.wait(until.elementLocated(By.id("give-site-name-and-location-link")), 5 * 20000);
    }

    async uploadSitePlanLink() {
        return this.browser.wait(until.elementLocated(By.id("upload-the-site-plan-link")), 5 * 20000);
    }

    async uploadFirePreventionPlanLink() {
        return this.browser.wait(until.elementLocated(By.id("upload-the-fire-prevention-plan-link")), 5 * 20000);
    }

    async drainageSystemForVehicleStorageAreaLink() {
        return this.browser.wait(until.elementLocated(By.id("confirm-the-drainage-system-for-the-vehicle-storage-area-link")), 5 * 20000);
    }

    async selectDifferentPermit() {
        return this.browser.wait(until.elementLocated(By.id("select-a-different-permit")), 5 * 20000);
    }

    async checkCostAndProcessingTime() {
        return this.browser.wait(until.elementLocated(By.id("check-permit-cost-and-time-link")), 5 * 20000);
    }

    async saveYourApplication() {
        return this.browser.wait(until.elementLocated(By.id("set-up-save-and-return-link")), 5 * 20000);
    }


}

module.exports.TaskList = TaskList;