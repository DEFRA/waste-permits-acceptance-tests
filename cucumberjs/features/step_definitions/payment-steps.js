const World = require("../support/world").World;
const Assert = require("assert");
let radioButton;
let fieldText;

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

    //     When I enter "000000000" in the card number
    this.defineStep(/^I enter "(.*?)" in the card number$/, { timeout: 60000 }, async function (text) {
        fieldText = await this.selectPayment.cardNoField();
        await fieldText.clear();
        await fieldText.sendKeys(text);
    });
    // And I enter "01" in Expiry month
    this.defineStep(/^I enter "(.*?)" in Expiry month$/, { timeout: 60000 }, async function (text) {
        fieldText = await this.selectPayment.expiryMonthField();
        await fieldText.clear();
        await fieldText.sendKeys(text);
    });
    // And I enter "22" in the Expiry year
    this.defineStep(/^I enter "(.*?)" in the Expiry year$/, { timeout: 60000 }, async function (text) {
        fieldText = await this.selectPayment.expiryYearField();
        await fieldText.clear();
        await fieldText.sendKeys(text);
    });
    // And I enter "UR Test" in the cardholders name
    this.defineStep(/^I enter "(.*?)" in the cardholders name$/, { timeout: 60000 }, async function (text) {
        fieldText = await this.selectPayment.cardholderNameField();
        await fieldText.clear();
        await fieldText.sendKeys(text);
    });
    // And I enter "111" in the security code
    this.defineStep(/^I enter "(.*?)" in the security code$/, { timeout: 60000 }, async function (text) {
        fieldText = await this.selectPayment.cvcField();
        await fieldText.clear();
        await fieldText.sendKeys(text);
    });
    // And I enter "UR Test Address ln1" in card address line 1
    this.defineStep(/^I enter "(.*?)" in card address line 1$/, { timeout: 60000 }, async function (text) {
        fieldText = await this.selectPayment.addrLine1Field();
        await fieldText.clear();
        await fieldText.sendKeys(text);
    });
    // And I enter "UR Test Address ln2" in card address line 2
    this.defineStep(/^I enter "(.*?)" in card address line 2$/, { timeout: 60000 }, async function (text) {
        fieldText = await this.selectPayment.addrLine2Field();
        await fieldText.clear();
        await fieldText.sendKeys(text);
    });
    // And I enter "Bristol" in the address City
    this.defineStep(/^I enter "(.*?)" in the address City$/, { timeout: 60000 }, async function (text) {
        fieldText = await this.selectPayment.addrCityField();
        await fieldText.clear();
        await fieldText.sendKeys(text);
    });
    // And I enter "BS1 5AH" in the uk postcode
    this.defineStep(/^I enter "(.*?)" in the uk postcode$/, { timeout: 60000 }, async function (text) {
        fieldText = await this.selectPayment.addrPostcodeField();
        await fieldText.clear();
        await fieldText.sendKeys(text);
    });
    // And I enter "URSR2015No17@gmail.com" in the email on the payment screen
    this.defineStep(/^I enter "(.*?)" in the email on the payment screen$/, { timeout: 60000 }, async function (text) {
        fieldText = await this.selectPayment.emailField();
        await fieldText.clear();
        await fieldText.sendKeys(text);
    });

    // And I submit card details
    this.defineStep(/^I submit card details$/, { timeout: 60000 }, async function () {
        fieldText = await this.selectPayment.submitCardButton();
        fieldText.click();
    });

    //When I click on 'Confirm payment' on the payment page
    this.defineStep(/^I click on Confirm payment on the payment page$/, { timeout: 60000 }, async function () {
        fieldText = await this.selectPayment.confirmPaymentButton();
        fieldText.click();
    });

    
};