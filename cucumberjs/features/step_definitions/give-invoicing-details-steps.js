const World = require("../support/world").World;
const ks = require("node-key-sender");
const driver = require('selenium-webdriver');
const Assert = require("assert");
let fieldText;
let field;


module.exports = function () {

    this.World = World;



    //When I enter "TF3 2BS" in the postcode field
    this.defineStep(/^I enter "(.*?)" in the "(.*?)" field on the address page$/, { timeout: 60000 }, async function (text, field) {
        switch (field) {
            case "Postcode":
                field = await this.giveInvoicingDetails.postCodeField();
                await field.clear();
                await field.sendKeys(text);
                break;
                case "Building Number":
                field = await this.giveInvoicingDetails.buildingNameOrNumberField();
                await field.clear();
                await field.sendKeys(text);
                break;
                case "Address Line 1":
                field = await this.giveInvoicingDetails.addressLine1Field();
                await field.clear();
                await field.sendKeys(text);
                break;
                case "Address Line 2":
                field = await this.giveInvoicingDetails.addressLine2Field();
                await field.clear();
                await field.sendKeys(text);
                break;
                case "Town or City":
                field = await this.giveInvoicingDetails.townOrCityField();
                await field.clear();
                await field.sendKeys(text);
                break;
            default: break;
        }


    });

    // And I should be able to see Select Address dropdown
    this.defineStep(/^I should be able to see Select Address dropdown$/, { timeout: 60000 }, async function () {
        await this.giveInvoicingDetails.selectAddressDropdown();
    });

    // When I select "1, DELBURY COURT, DEERCOTE, TELFORD, TF3 2BS" from the address dropdown
    this.defineStep(/^I select first address from the address dropdown$/, { timeout: 60000 }, async function () {
        const dropdown = await this.giveInvoicingDetails.selectAddressDropdown();
        await dropdown.click();
        const tex = await this.giveInvoicingDetails.selectAddressDropdownText();
        await tex.click();
    });


    this.defineStep(/^I click on  I can't find address in the link$/, { timeout: 60000 }, async function () {
        const manAddr = await this.giveInvoicingDetails.manualAddressEntryLink();
        await manAddr.click();
    });



};