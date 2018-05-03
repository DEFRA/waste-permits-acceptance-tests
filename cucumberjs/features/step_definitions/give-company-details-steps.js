const World = require("../support/world").World;
const ks = require("node-key-sender");
const driver = require('selenium-webdriver');
const Assert = require("assert");
let fieldText;
let field;


module.exports = function () {

    this.World = World;

    //And the Company number should be "11141218"
    this.defineStep(/^the Company number should be "(.*?)"$/, { timeout: 60000 }, async function (companyNo) {
        fieldText = await this.giveCompanyDetails.companyNumberText();
        actualtext = await this.giveCompanyDetails.getTextElement(fieldText);
        Assert.equal(actualtext, companyNo, "Incorrect company number");
    });

    //And I should be able to see "Enter a different number" link
    this.defineStep(/^I should be able to see "(.*?)" link$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "Enter a different number":
                await this.giveCompanyDetails.enterDifferentCompanyLink();
                break;
            case "That’s not our registered office address":
                await this.giveCompanyDetails.agentCompanyField();
                break;
            default: break;
        }
    });

    this.defineStep(/^I click on "(.*?)" link$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "Enter a different number":
                field = await this.giveCompanyDetails.enterDifferentCompanyLink();
                await field.click();
                break;
            default: break;
        }
    });

    // And the Company name should be "A A ALTERNATIVES LIMITED"
    this.defineStep(/^the Company name should be "(.*?)"$/, { timeout: 60000 }, async function (companyNo) {
        fieldText = await this.giveCompanyDetails.companyNameField();
        actualtext = await this.giveCompanyDetails.getTextElement(fieldText);
        Assert.equal(actualtext, companyNo, "Incorrect company name");
    });


    //And the Company address should be "Brunel House 340 Firecrest Court, Centre Park, Warrington, Cheshire, WA1 1RG"
    this.defineStep(/^the Company address should be "(.*?)"$/, { timeout: 60000 }, async function (companyNo) {
        fieldText = await this.giveCompanyDetails.companyAddressField();
        actualtext = await this.giveCompanyDetails.getTextElement(fieldText);
        Assert.equal(actualtext, companyNo, "Incorrect company address");
    });


    this.defineStep(/^I should be able to see "([^"]*)" field$/, { timeout: 60000 }, async function (button) {
        switch (button) {
            case "We use a different trading name":
                await this.giveCompanyDetails.differentTradingNameCheckbox();
                break;
            case "Business trading name":
                await this.giveCompanyDetails.businessTradingName();
                break;
            default: break;
        }
    });

    this.defineStep(/^I click on "([^"]*)" field$/, { timeout: 60000 }, async function (button) {
        switch (button) {
            case "We use a different trading name":
                field = await this.giveCompanyDetails.differentTradingNameCheckbox();
                await field.click();
                break;
            case "Business trading name":
                field = await this.giveCompanyDetails.businessTradingName();
                await field.click();
                break;
            default: break;
        }
    });

    // And the director name should be "Angela ANNETT"
    this.defineStep(/^the director "([^"]*)" name should be "([^"]*)"$/, { timeout: 60000 }, async function (no, directorName) {
        fieldText = await this.giveCompanyDetails.directorNameField(no);
        actualtext = await this.giveCompanyDetails.getTextElement(fieldText);
        Assert.equal(actualtext, directorName, "Incorrect director's name");
    });

    // And the month and year of birth should be "February 1954"
    this.defineStep(/^the director "([^"]*)" month and year of birth should be "([^"]*)"$/, { timeout: 60000 }, async function (no, monthYearBirth) {
        fieldText = await this.giveCompanyDetails.directorDOBMonthYearField(no);
        actualtext = await this.giveCompanyDetails.getTextElement(fieldText);
        Assert.equal(actualtext, monthYearBirth, "Incorrect month and year of director");
    });

    // When I enter "04" in the day field of the birthdate
    this.defineStep(/^I enter "([^"]*)" in the day field of the director "([^"]*)" birthdate$/, { timeout: 60000 }, async function (birthDay,no) {
        fieldText = await this.giveCompanyDetails.directorDOBDayField(no);
        await fieldText.clear();
        await fieldText.sendKeys(birthDay);
    });

    // When I select "Yes" option
    this.defineStep(/^I select "([^"]*)" option$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "Yes":
                field = await this.giveCompanyDetails.declaredRadio();
                await field.click();
                break;
            case "No":
                field = await this.giveCompanyDetails.nonDeclaredRadio();
                await field.click();
                break;
            default: break;
        }
    });

    //     Then "Declaration" text area should be displayed
    this.defineStep(/^Declaration text area should be displayed$/, { timeout: 60000 }, async function () {
        await this.giveCompanyDetails.declaredTextField();
    });
    //     When I enter "My declaration" in the "Declaration" text
    this.defineStep(/^I enter "([^"]*)" in the Declaration text$/, { timeout: 60000 }, async function (text) {
        const declarationText = await this.giveCompanyDetails.declaredTextField();
        await declarationText.clear();
        await declarationText.sendKeys(text);
    });
};