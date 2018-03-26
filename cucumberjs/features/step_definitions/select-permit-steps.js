//And I select a permit "SR2010-No-4"

const World = require("../support/world").World;
const Assert = require("assert");
let actualtext = "";
let permitSelect;

module.exports = function () {

    this.World = World;


    this.defineStep(/^I should be able to see "(.*?)" Permit$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "SR2010 No 4":
                const permitSR2010No4Code = await this.selectPermit.permitSR2010No4Code();
                actualtext = await this.selectPermit.getTextElement(permitSR2010No4Code);
                Assert.equal(actualtext, option);
                break;
            case "SR2010 No 6":
                const permitSR2010No6Code = await this.selectPermit.permitSR2010No6Code();
                actualtext = await this.selectPermit.getTextElement(permitSR2010No6Code);
                Assert.equal(actualtext, option);
                break;
            case "SR2010 No 5":
                const permitSR2010No5Code = await this.selectPermit.permitSR2010No5Code();
                actualtext = await this.selectPermit.getTextElement(permitSR2010No5Code);
                Assert.equal(actualtext, option);
                break;
            case "SR2008 No 27":
                const permitSR2008No27Code = await this.selectPermit.permitSR2008No27Code();
                actualtext = await this.selectPermit.getTextElement(permitSR2008No27Code);
                Assert.equal(actualtext, option);
                break;
            case "SR2010 No 11":
                const permitSR2010No11Code = await this.selectPermit.permitSR2010No11Code();
                actualtext = await this.selectPermit.getTextElement(permitSR2010No11Code);
                Assert.equal(actualtext, option);
                break;
            case "SR2010 No 12":
                const permitSR2010No12Code = await this.selectPermit.permitSR2010No12Code();
                actualtext = await this.selectPermit.getTextElement(permitSR2010No12Code);
                Assert.equal(actualtext, option);
                break;
            case "SR2015 No 17":
                const permitSR2015No17Code = await this.selectPermit.permitSR2015No17Code();
                actualtext = await this.selectPermit.getTextElement(permitSR2015No17Code);
                Assert.equal(actualtext, option);
                break;
            default:
                Assert.fail("Permit type is invalid");
                break;
        }
    });


    this.defineStep(/^the title of the permit should be "([^"]*)"$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "Mobile plant for land-spreading\nSpreading waste for agricultural or ecological benefit - up to 10 waste types with 50 hectares per deployment":
                const permitSR2010No4Name = await this.selectPermit.permitSR2010No4Name();
                actualtext = await this.selectPermit.getTextElement(permitSR2010No4Name);
                Assert.equal(actualtext, option);
                break;
            case "Mobile plant for land-spreading of sewage sludge\nDeployment maximum 250 tonnes per hectare over 50 hectares":
                const permitSR2010No6Name = await this.selectPermit.permitSR2010No6Name();
                actualtext = await this.selectPermit.getTextElement(permitSR2010No6Name);
                Assert.equal(actualtext, option);
                break;
            case "Mobile plant for reclamation, restoration or improvement of land\nSpreading waste to create a soil profile - up to 10 waste types per hectare over 50 hectares":
                const permitSR2010No5Name = await this.selectPermit.permitSR2010No5Name();
                actualtext = await this.selectPermit.getTextElement(permitSR2010No5Name);
                Assert.equal(actualtext, option);
                break;
            case "Mobile plant for the treatment of soils and contaminated material, substances or products":
                const permitSR2008No27Name = await this.selectPermit.permitSR2008No27Name();
                actualtext = await this.selectPermit.getTextElement(permitSR2008No27Name);
                Assert.equal(actualtext, option);
                break;
            case "Mobile plant for the treatment of waste to produce soil, soil substitutes and aggregate\nLess than 75,000 tonnes per deployment":
                const permitSR2010No11Name = await this.selectPermit.permitSR2010No11Name();
                actualtext = await this.selectPermit.getTextElement(permitSR2010No11Name);
                Assert.equal(actualtext, option);
                break;
            case "Treatment of waste to produce soil, soil substitutes and aggregate\nLess than 75,000 tonnes per year":
                const permitSR2010No12Name = await this.selectPermit.permitSR2010No12Name();
                actualtext = await this.selectPermit.getTextElement(permitSR2010No12Name);
                Assert.equal(actualtext, option);
                break;
            case "Vehicle storage depollution and dismantling authorised treatment facility\nLess than 5,000 tonnes per site":
                const permitSR2015No17Name = await this.selectPermit.permitSR2015No17Name();
                actualtext = await this.selectPermit.getTextElement(permitSR2015No17Name);
                Assert.equal(actualtext, option);
                break;
            default:
                Assert.fail("Permit type is invalid");
                break;
        }
    });


    this.defineStep(/^I select a permit "(.*?)"$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "SR2010 No 4":
                permitSelect = await this.selectPermit.permitSR2010No4Radio();
                permitSelect.click();
                break;
            case "SR2010 No 6":
                permitSelect = await this.selectPermit.permitSR2010No6Radio();
                permitSelect.click();
                break;
            case "SR2010 No 5":
                permitSelect = await this.selectPermit.permitSR2010No5Radio();
                permitSelect.click();
                break;
            case "SR2008 No 27":
                permitSelect = await this.selectPermit.permitSR2008No27Radio();
                permitSelect.click();
                break;
            case "SR2010 No 11":
                permitSelect = await this.selectPermit.permitSR2010No11Radio();
                permitSelect.click();
                break;
            case "SR2010 No 12":
                permitSelect = await this.selectPermit.permitSR2010No12Radio();
                permitSelect.click();
                break;
            case "SR2015 No 17":
                permitSelect = await this.selectPermit.permitSR2015No17Radio();
                permitSelect.click();
                break;
            case "SR2015 No 18":
                permitSelect = await this.selectPermit.permitSR2015No18Radio();
                permitSelect.click();
                break;
            case "SR2015 No 13":
                permitSelect = await this.selectPermit.permitSR2015No13Radio();
                permitSelect.click();
                break;

            default: break;
        }
    });

};