const World = require("../support/world").World;
const Assert = require("assert");
let linkText;

module.exports = function () {

    this.World = World;

    this.defineStep(/^I am on the Task list page$/, { timeout: 60000 }, async function () {
        await this.taskList.waitUntilLoaded();
    });


    this.defineStep(/^Upload documents is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.uploadCompleted();
    });

    this.defineStep(/^Confirm you have suitable vehicle storage areas is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.confirmDrainageCompleted();
    });

    this.defineStep(/^Give Contact Details is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.giveContactDetailsCompleted();
    });

    this.defineStep(/^Give Invoicing Details is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.giveInvoicingDetailsCompleted();
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

    this.defineStep(/^Upload site plan is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.uploadSitePlanCompleted();
    });

    this.defineStep(/^Upload fire prevention plan is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.uploadFirePreventionPlanCompleted();
    });

    this.defineStep(/^Give site name and address is marked as completed$/, { timeout: 60000 }, async function () {
        await this.taskList.giveSiteNameAddressCompleted();
    });

    this.defineStep(/^I am on the Task list page for "([^"]*)"$/, { timeout: 60000 }, async function (permit) {
        const permitType = await this.taskList.permitTypeText();
        actualtext = await this.taskList.getTextElement(permitType);
        Assert.equal(actualtext, permit);
    });

    this.defineStep(/^I click on the "(.*?)" link$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "Check cost and processing time":
                linkText = await this.taskList.checkCostAndProcessingTime();
                await linkText.click();
                break;
            case "Save your application":
                linkText = await this.taskList.saveYourApplication();
                await linkText.click();
                break;    
            case "Upload technical management qualifications":
                linkText = await this.taskList.uploadTechnicalManagementQualificationsLink();
                await linkText.click();
                break;
            case "Confirm that your operation meets the rules":
                linkText = await this.taskList.confirmThatYourOperationMeetsRulesLink();
                await linkText.click();
                break;
            case "Give invoicing details":
                linkText = await this.taskList.giveInvoicingDetailsLink();
                await linkText.click();
                break;
            case "Give contact details":
                linkText = await this.taskList.giveContactDetailsLink();
                await linkText.click();
                break;
            case "Give company details":
                linkText = await this.taskList.givePermitHolderDetailsLink();
                await linkText.click();
                break;
            case "Confirm confidentiality needs":
                linkText = await this.taskList.confirmConfidentialityNeedsLink();
                await linkText.click();
                break;
            case "Send application and pay":
                linkText = await this.taskList.submitPayLink();
                await linkText.click();
                break;
            case "Give site name and location":
                linkText = await this.taskList.siteNameAndLocationLink();
                await linkText.click();
                break;
            case "Upload the site plan":
                linkText = await this.taskList.uploadSitePlanLink();
                await linkText.click();
                break;
            case "Upload the fire prevention plan":
                linkText = await this.taskList.uploadFirePreventionPlanLink();
                await linkText.click();
                break;
            case "Confirm you have suitable vehicle storage areas":
                linkText = await this.taskList.drainageSystemForVehicleStorageAreaLink();
                await linkText.click();
                break;
            case "Select a different permit":
                clinkText = await this.taskList.selectDifferentPermit();
                await linkText.click();
                break;
            default: break;
        }
    });

    this.defineStep(/^I should not be able to see "(.*?)" task link$/, { timeout: 60000 }, async function (option) {
        fieldText = await this.taskList.taskList();
        actualtext = await this.taskList.getTextElement(fieldText);
        const value = actualtext.indexOf(option);
        Assert.notEqual(value, 0, "error message not found Actual:- " + actualtext + "Expected was :-" + option);
    });

    this.defineStep(/^I should be able to see "(.*?)" task link$/, { timeout: 60000 }, async function (option) {
        fieldText = await this.taskList.taskList();
        actualtext = await this.taskList.getTextElement(fieldText);
        const value = actualtext.indexOf(option);
        Assert.notEqual(value, -1, "error message not found Actual:- " + actualtext + "Expected was :-" + option);
    });




};