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

    async email() {
        return this.browser.wait(until.elementLocated(By.id("save-and-return-email")), 5 * 20000);
    }

    async emailaddr() {
        return this.browser.wait(until.elementLocated(By.id("save-and-return-email")), 5 * 20000);
    }
    
    async gotemail() {
        return this.browser.wait(until.elementLocated(By.id("got-email")), 5 * 20000);
    }
    
    async notgotemail() {
        return this.browser.wait(until.elementLocated(By.id("not-got-email")), 5 * 20000);
    }

    async cost() {
        return this.browser.wait(until.elementLocated(By.id("cost")), 5 * 20000);
    }

    async timeForApplication() {
        return this.browser.wait(until.elementLocated(By.id("length-of-time-text")), 5 * 20000);
    }

    async getTextElement(element) {
        return element.getText();
    }
       
}

module.exports.ConfirmRules = ConfirmRules;