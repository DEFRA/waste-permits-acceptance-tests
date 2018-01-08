const World = require("../support/world").World;

module.exports = function () {

    this.World = World;

    this.defineStep(/^I am on "(.*?)" page$/, async function (title) {
        console.log(title);
        await this.newApplication.waitUntilLoaded(title);
    });

    this.defineStep(/^I select "(.*?)" waste permit application page$/, async function (option) {
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

    this.defineStep(/^I click on "(.*?)" button$/, async function (button) {
        switch (button) {
            case "Continue":
                const continueButton = await this.newApplication.continueButton();
                continueButton.click();
                break;
            default: break;
        }
    });
};