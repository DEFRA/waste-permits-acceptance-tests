const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class ConfirmRules {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    async returnToTaskListButton() {
        return this.browser.wait(until.elementLocated(By.id("return-to-task-list-button")), 5 * 20000);
    }

    async operationMeetsRulesButton() {
        return this.browser.wait(until.elementLocated(By.id("operation-meets-rules-button")), 5 * 20000);
    }

    async confirmResultMessage() {
        return this.browser.wait(until.elementLocated(By.id("confirm-result-message")), 5 * 20000);
    }

       
}

module.exports.ConfirmRules = ConfirmRules;