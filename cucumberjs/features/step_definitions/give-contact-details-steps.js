const World = require("../support/world").World;
const ks = require("node-key-sender");
const driver = require('selenium-webdriver');


module.exports = function () {

    this.World = World;

    this.defineStep(/^I enter "(.*?)" in the "(.*?)" field$/, { timeout: 60000 }, async function (text, field) {
        switch (field) {
            case "First name":
                const firstName = await this.giveContactDetails.firstNameField();
                await firstName.sendKeys(text);
                break;
            case "Last name":
                const lastName = await this.giveContactDetails.lastNameField();
                await lastName.sendKeys(text);
                break;
            case "Agent checkbox":
                const agentCheckBox = await this.giveContactDetails.agentCompanyCheckBox();
                await agentCheckBox.click();
                break;

            default: break;
        }
    });


};