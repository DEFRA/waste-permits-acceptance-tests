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
        Assert.notEqual(actualtext,null);
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
                await fieldText.clear();
                await fieldText.sendKeys(text);
                break;
            case "Last name":
                fieldText = await this.giveContactDetails.lastNameField();
                await fieldText.clear();
                await fieldText.sendKeys(text);
                break;
            case "Agent checkbox":
                fieldText = await this.giveContactDetails.agentCompanyCheckBox();
                await fieldText.click();
                break;
            case "Telephone number":
                fieldText = await this.giveContactDetails.telephoneField();
                await fieldText.clear();
                await fieldText.sendKeys(text);
                break;

            case "Main contact email":
                fieldText = await this.giveContactDetails.emailField();
                await fieldText.clear();
                await fieldText.sendKeys(text);
                break;

            case "Secratary/directors email":
                fieldText = await this.giveContactDetails.emailField();
                await fieldText.clear();
                await fieldText.sendKeys(text);
                break;

            case "Company number":
                fieldText = await this.giveCompanyDetails.enterCompanyNumberField();
                await fieldText.clear();
                await fieldText.sendKeys(text);
                break;
            case "Business trading name":
                fieldText = await this.giveCompanyDetails.businessTradingName();
                await fieldText.clear();
                await fieldText.sendKeys(text);
                break;
            case "Site Name":
                fieldText = await this.giveSiteNameLocation.siteNameField();
                await fieldText.clear();
                await fieldText.sendKeys(text);
                break;
            case "Site Grid Reference":
                fieldText = await this.giveSiteNameLocation.siteGridReferenceField();
                await fieldText.clear();
                await fieldText.sendKeys(text);
                break;

            default: break;
        }
    });


};