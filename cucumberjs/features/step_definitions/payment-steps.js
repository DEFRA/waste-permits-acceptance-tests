const World = require("../support/world").World;
const Assert = require("assert");
let radioButton;

module.exports = function () {

    this.World = World;

    this.defineStep(/^I select "(.*?)" payment method$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "BACS":
                radioButton = await this.selectPayment.bacsPaymentRadio();
                radioButton.click();
                break;
            case "Card":
                radioButton = await this.selectPayment.cardPaymentRadio();
                radioButton.click();
                break;
            default: break;
        }
    });

    //And the application id is displayed
    this.defineStep(/^the application id is displayed$/, { timeout: 60000 }, async function () {
        fieldText = await this.selectPayment.applicationNumber();
        actualtext = await this.selectPayment.getTextElement(fieldText);
        Assert.notEqual(actualtext, null, "Application number not found:- " + actualtext);
    });


    
    this.defineStep(/^I send the application$/, { timeout: 60000 }, async function () {
        fieldText = await this.selectPayment.sendApplicationButton();
        fieldText.click();
    });
};