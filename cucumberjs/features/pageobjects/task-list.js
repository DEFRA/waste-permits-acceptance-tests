const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class TaskList {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    waitUntilLoaded() {
        return this.browser.wait(until.elementLocated(By.xpath(`//span[contains(text(),"Task list:")]`)), 5 * 20000);
    }

    
    uploadTechnicalManagementQualificationsLink() {
        return this.browser.wait(until.elementLocated(By.id("upload-technical-management-qualifications-link")), 5 * 20000);
    }

    uploadCompleted() {
        return this.browser.wait(until.elementLocated(By.id("upload-completed")), 5 * 20000);
    }
    

    confirmThatYourOperationMeetsRulesLink() {
        return this.browser.wait(until.elementLocated(By.id("confirm-that-your-operation-meets-the-rules-link")), 5 * 20000);
    }

    giveContactDetailsLink() {
        return this.browser.wait(until.elementLocated(By.id("give-contact-details-link")), 5 * 20000);
    }

    
    confirmConfidentialityNeedsLink() {
        return this.browser.wait(until.elementLocated(By.id("confirm-confidentiality-needs-link")), 5 * 20000);
    }

    givePermitHolderDetailsLink() {
        return this.browser.wait(until.elementsLocated(By.id("give-permit-holder-details-link")),5 * 20000);
    }

    
submitPayLink() {
        return this.browser.wait(until.elementLocated(By.id("submit-pay-link")), 5 * 20000);
    }
   
}

module.exports.TaskList = TaskList;