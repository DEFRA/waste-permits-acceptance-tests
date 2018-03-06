
//   this.Then(/^$/, function (callback) {
//     // Write code here that turns the phrase above into concrete actions
//     callback(null, 'pending');
//   });

//   this.Then(/^Confirm confidentiality needs is marked as completed$/, function (callback) {
//     // Write code here that turns the phrase above into concrete actions
//     callback(null, 'pending');
//   });



const World = require("../support/world").World;
const ks = require("node-key-sender");
const driver = require('selenium-webdriver');


module.exports = function () {

    this.World = World;

    this.defineStep(/^I select "([^"]*)" on confidentiality page$/, { timeout: 60000 }, async function (button) {
        switch (button) {
            case "Yes, I want to claim confidentiality for part of my application":
                const declareRadio = await this.confirmConfidentiality.decalredRadio();
                await declareRadio.click();
                break;
            case "No":
                const nondeclareRadio = await this.confirmConfidentiality.nonDecalredRadio();
                await nondeclareRadio.click();
                break;
            default: break;
        }
    });

    this.defineStep(/^I should be able to see the confidentiality declaration text box$/, { timeout: 60000 }, async function () {
       await this.confirmConfidentiality.declarationDetailsText();
    });

    this.defineStep(/^I enter "([^"]*)" in the declaration text box$/, { timeout: 60000 }, async function (text) {
        const declarationText = await this.confirmConfidentiality.declarationDetailsText();
        await declarationText.sendKeys(text);
    });


};