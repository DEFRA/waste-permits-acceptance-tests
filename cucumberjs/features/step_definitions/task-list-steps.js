const World = require("../support/world").World;
const Assert = require("assert");

module.exports = function () {

    this.World = World;

    this.defineStep(/^I am on the Task list page$/, { timeout: 60000 }, async function () {
        await this.taskList.waitUntilLoaded();
    });


    this.defineStep(/^Upload documents is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.uploadCompleted();
    });

    this.defineStep(/^Give Contact Details is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.giveContactDetailsCompleted();
    });

    this.defineStep(/^Give Company Details is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.giveCompanyDetailsCompleted();
    });


    this.defineStep(/^Confirm you can meet the rules is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.confirmRulesCompleted();
    });

    this.defineStep(/^Confirm confidentiality needs is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.confirmConfidentialityCompleted();
    });


    this.defineStep(/^I am on the Task list page for "([^"]*)"$/, { timeout: 60000 }, async function (permit) {
        const permitType = await this.taskList.permitTypeText();
        actualtext = await this.taskList.getTextElement(permitType);
        Assert.equal(actualtext, permit);
    });

    this.defineStep(/^I click on the "(.*?)" link$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "Upload technical management qualifications":
                const uploadTechnicalManagementQualificationsLink = await this.taskList.uploadTechnicalManagementQualificationsLink();
                await uploadTechnicalManagementQualificationsLink.click();
                break;
            case "Confirm that your operation meets the rules":
                const confirmThatYourOperationMeetsRulesLink = await this.taskList.confirmThatYourOperationMeetsRulesLink();
                await confirmThatYourOperationMeetsRulesLink.click();
                break;
            case "Give contact details":
                const giveContactDetailsLink = await this.taskList.giveContactDetailsLink();
                await giveContactDetailsLink.click();
                break;
            case "Give company details":
                const givePermitHolderDetailsLink = await this.taskList.givePermitHolderDetailsLink();
                await givePermitHolderDetailsLink.click();
                break;
            case "Confirm confidentiality needs":
                const confirmConfidentialityNeedsLink = await this.taskList.confirmConfidentialityNeedsLink();
                await confirmConfidentialityNeedsLink.click();
                break;
            case "Send application and pay":
                const submitPayLink = await this.taskList.submitPayLink();
                await submitPayLink.click();
                break;
            default: break;
        }
    });

};