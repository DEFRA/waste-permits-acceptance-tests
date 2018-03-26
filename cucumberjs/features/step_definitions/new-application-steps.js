const World = require("../support/world").World;

module.exports = function () {

    this.World = World;

    this.defineStep(/^I am on the "(.*?)" page$/, { timeout: 60000 }, async function (title) {
        await this.newApplication.waitUntilLoaded(title);
    });

    this.defineStep(/^I select "(.*?)" waste permit application page$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "Start a new application":
                const startApplication = await this.newApplication.startApplicationRadio();
                startApplication.click();
                break;
            case "Open a saved application":
                const openApplication = await this.newApplication.openApplicationRadio();
                openApplication.click();
                break;
            default: break;
        }
    });

    this.defineStep(/^I click on "(.*?)" button$/, { timeout: 60000 }, async function (button) {
        switch (button) {
            case "Continue":
                const continueButton = await this.newApplication.continueButton();
                await continueButton.click();
                break;
            case "Find Address":
                const findAddressButton = await this.newApplication.continueButton();
                await findAddressButton.click();
                break;
            case "Send Application":
                const submitButton = await this.newApplication.continueButton();
                await submitButton.click();
            default: break;
        }
    });
};