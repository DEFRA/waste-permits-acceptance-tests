const World = require("../support/world").World;

module.exports = function () {

    this.World = World;

    this.defineStep(/^I am on the Task list page$/, async function () {
        await this.taskList.waitUntilLoaded();
    });

    this.defineStep(/^I click on the "(.*?)" link$/, async function (option) {
        switch (option) {
            case "Upload technical management qualifications":
                const uploadTechnicalManagementQualificationsLink = await this.taskList.uploadTechnicalManagementQualificationsLink();
                uploadTechnicalManagementQualificationsLink.click();
                break;
            case "Confirm that your operation meets the rules":
                const confirmThatYourOperationMeetsRulesLink = await this.taskList.confirmThatYourOperationMeetsRulesLink();
                confirmThatYourOperationMeetsRulesLink.click();
                break;
            case "Give contact details":
                const giveContactDetailsLink = await this.taskList.giveContactDetailsLink();
                giveContactDetailsLink.click();
                break;
            case "Give permit holder details":
                const givePermitHolderDetailsLink = await this.taskList.givePermitHolderDetailsLink();
                givePermitHolderDetailsLink.click();
                break;
            case "Confirm confidentiality needs":
                const confirmConfidentialityNeedsLink = await this.taskList.confirmConfidentialityNeedsLink();
                confirmConfidentialityNeedsLink.click();
                break;
            case "Send application and pay":
                const submitPayLink = await this.taskList.submitPayLink();
                submitPayLink.click();
                break;
            default: break;
        }
    });

};