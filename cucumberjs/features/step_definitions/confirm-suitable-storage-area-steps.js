const World = require("../support/world").World;
const ks = require("node-key-sender");
const driver = require('selenium-webdriver');
let button_select;

module.exports = function () {

    this.World = World;

    this.defineStep(/^I click on "(.*?)" button on the Confirm vehicle storage area$/, { timeout: 60000 }, async function (button) {
        switch (button) {
            case "Sewer":
                button_select = await this.confirmSuitableStorageArea.sewerRadio();
                await button_select.click();
                break;
            case "Blind Sump":
                button_select = await this.ConfirmSuitableStorageArea.blindSumpRadio();
                await button_select.click();
                break;
            case "Oil Separator":
                button_select = await this.ConfirmSuitableStorageArea.oilSeparatorRadio();
                await button_select.click();
                break;
            case "Surface water drains":
                button_select = await this.ConfirmSuitableStorageArea.waterCourseRadio();
                await button_select.click();
                break;
            default:
                break;
        }

    });


};