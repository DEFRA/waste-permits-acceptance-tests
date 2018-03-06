const World = require("../support/world").World;
const ks = require("node-key-sender");
const driver = require('selenium-webdriver');
const Assert = require("assert");
let fieldText;


module.exports = function () {

    this.World = World;

    this.defineStep(/^I should be able to see error "(.*?)"$/, { timeout: 60000 }, async function (errorText) {
        fieldText = await this.giveContactDetails.errorSummaryField();
        actualtext = await this.taskList.getTextElement(fieldText);
        const value = actualtext.indexOf(errorText);
        Assert.notEqual(value, -1, "error message not found Actual:- " + actualtext + "Expected was :-" + errorText);
    });

    
    this.defineStep(/^I should not be able to see error "(.*?)"$/, { timeout: 60000 }, async function (errorText) {
        fieldText = await this.giveContactDetails.errorSummaryField();
        actualtext = await this.taskList.getTextElement(fieldText);
        const value = actualtext.indexOf(errorText);
        Assert.notEqual(value, 0, "error message found Actual:- " + actualtext + "Expected was :-" + errorText);
    });

    this.defineStep(/^I enter "(.*?)" in the "(.*?)" field$/, { timeout: 60000 }, async function (text, field) {
        switch (field) {
            case "First name":
                fieldText = await this.giveContactDetails.firstNameField();
                await fieldText.sendKeys(text);
                break;
            case "Last name":
                fieldText = await this.giveContactDetails.lastNameField();
                await fieldText.sendKeys(text);
                break;
            case "Agent checkbox":
                fieldText = await this.giveContactDetails.agentCompanyCheckBox();
                await fieldText.click();
                break;
            case "Telephone number":
                fieldText = await this.giveContactDetails.telephoneField();
                await fieldText.sendKeys(text);
                break;

            case "Main contact email":
                fieldText = await this.giveContactDetails.emailField();
                await fieldText.sendKeys(text);
                break;

            case "Secratary/directors email":
                fieldText = await this.giveContactDetails.companySecretaryEmailField();
                await fieldText.sendKeys(text);
                break;

            default: break;
        }
    });


};