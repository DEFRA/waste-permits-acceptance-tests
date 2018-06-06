//And I select a permit "SR2010-No-4"

const World = require("../support/world").World;
const Assert = require("assert");
let actualtext = "";
let permitSelect;
const fs = require('fs');

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
            case "SR2012 No 12":
                const permitSR2012No12Code = await this.selectPermit.permitSR2012No12Code();
                actualtext = await this.selectPermit.getTextElement(permitSR2012No12Code);
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
            case "Anaerobic digestion facility including use of the resultant biogas (waste recovery operation)\nLess than 75,000 tonnes per year":
                const permitSR2012No12Name = await this.selectPermit.permitSR2012No12Name();
                actualtext = await this.selectPermit.getTextElement(permitSR2012No12Name);
                Assert.equal(actualtext, option);
                break;
            default:
                Assert.fail("Permit type is invalid");
                break;
        }
    });

    //I should be able to see <link> to download manual guidance
    this.defineStep(/^I should be able to see "(.*?)" to download manual guidance$/, { timeout: 60000 }, async function (link) {
        const linkurl = await this.selectPermit.manualPermitLink();
        const urlhref = await this.selectPermit.elementHrefAttribute(linkurl);
        actualtext = await this.selectPermit.getTextElement(linkurl);
        Assert.equal(link, urlhref, "Incorrect: expected: " + urlhref + " Expected:- " + link);
    });

    this.defineStep(/^I should be able to see "(.*?)" to download manual guidance for Radioactive substances for non-nuclear sites$/, { timeout: 60000 }, async function (link) {
        const linkurl = await this.selectPermit.radioActiveLink();
        const urlhref = await this.selectPermit.elementHrefAttribute(linkurl);
        actualtext = await this.selectPermit.getTextElement(linkurl);
        Assert.equal(link, urlhref, "Incorrect: expected: " + urlhref + " Expected:- " + link);
    });

    this.defineStep(/^I should be able to see "(.*?)" to download manual guidance for flood risk activities$/, { timeout: 60000 }, async function (link) {
        const linkurl = await this.selectPermit.floodRiskLink();
        const urlhref = await this.selectPermit.elementHrefAttribute(linkurl);
        actualtext = await this.selectPermit.getTextElement(linkurl);
        Assert.equal(link, urlhref, "Incorrect: expected: " + urlhref + " Expected:- " + link);
    });

    this.defineStep(/^I should be able to see "(.*?)" to download manual guidance for water discharges$/, { timeout: 60000 }, async function (link) {
        const linkurl = await this.selectPermit.waterLink();
        const urlhref = await this.selectPermit.elementHrefAttribute(linkurl);
        actualtext = await this.selectPermit.getTextElement(linkurl);
        Assert.equal(link, urlhref, "Incorrect: expected: " + urlhref + " Expected:- " + link);
    });

    this.defineStep(/^I click on "(.*?)" link$/, { timeout: 60000 }, async function (link) {
        switch (link) {
            case "Change your selection":
                const linkurl = await this.selectPermit.changeSelectionLink();
                await linkurl.click();
                break;
            default: break;
        }
    });

    this.defineStep(/^I select a permit "(.*?)"$/, { timeout: 60000 }, async function (option) {
        fs.appendFile('Application_Numbers.txt', '\n', function (err) {
            if (err) throw err;
        });
        fs.appendFile('Application_Numbers.txt', option, function (err) {
            if (err) throw err;
        });
        switch (option) {
            case "SR2010 No 4":
                permitSelect = await this.selectPermit.permitSR2010No4Radio();
                permitSelect.click();
                break;
            case "SR2010 No 6":
                permitSelect = await this.selectPermit.permitSR2010No6Radio();
                permitSelect.click();
                break;
            case "SR2015 No 6":
                permitSelect = await this.selectPermit.permitSR2015No6Radio();
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
            case "SR2015 No 4":
                permitSelect = await this.selectPermit.permitSR2015No4Radio();
                permitSelect.click();
                break;
            case "SR2008 No 9":
                permitSelect = await this.selectPermit.permitSR2008No9Radio();
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
            case "SR2015 No 39":
                permitSelect = await this.selectPermit.permitSR2015No39Radio();
                permitSelect.click();
                break;
            case "SR2012 No 12":
                permitSelect = await this.selectPermit.permitSR2012No12Radio();
                permitSelect.click();
                break;
            case "SR2012 No 10":
                permitSelect = await this.selectPermit.permitSR2012No10Radio();
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
            case "SR2012 No 3":
                permitSelect = await this.selectPermit.permitSR2012No3Radio();
                permitSelect.click();
                break;
            case "SR2015 No 13":
                permitSelect = await this.selectPermit.permitSR2015No13Radio();
                permitSelect.click();
                break;
            case "SR2010 No 14":
                permitSelect = await this.selectPermit.permitSR2010No14Radio();
                permitSelect.click();
                break;
            case "SR2012 No 7":
                permitSelect = await this.selectPermit.permitSR2012No7Radio();
                permitSelect.click();
                break;
            case "SR2011 No 1":
                permitSelect = await this.selectPermit.permitSR2011No1Radio();
                permitSelect.click();
                break;
            case "SR2008 No 19 75kte":
                permitSelect = await this.selectPermit.permitSR2008No1975kteRadio();
                permitSelect.click();
            case "SR2008 No 19 250kte":
                permitSelect = await this.selectPermit.permitSR2008No19250kteRadio();
                permitSelect.click();
                break;
            case "SR2012 No 15":
                permitSelect = await this.selectPermit.permitSR2012No15Radio();
                permitSelect.click();
                break;
            case "SR2015 No3":
                permitSelect = await this.selectPermit.permitSR2015No3Radio();
                permitSelect.click();
                break;
            case "SR2015 No14":
                permitSelect = await this.selectPermit.permitSR2015No14Radio();
                permitSelect.click();
                break;
            case "SR2015 No16":
                permitSelect = await this.selectPermit.permitSR2015No16Radio();
                permitSelect.click();
                break;
            case "SR2008 No22":
                permitSelect = await this.selectPermit.permitSR2008No22Radio();
                permitSelect.click();
                break;
            case "SR2009 No7":
                permitSelect = await this.selectPermit.permitSR2009No7Radio();
                permitSelect.click();
                break;
            case "SR2015 No15":
                permitSelect = await this.selectPermit.permitSR2015No15Radio();
                permitSelect.click();
                break;
            case "SR2015 No14":
                permitSelect = await this.selectPermit.permitSR2015No14Radio();
                permitSelect.click();
                break;
            case "SR2015 No 2":
                permitSelect = await this.selectPermit.permitSR2015No2Radio();
                permitSelect.click();
                break;
            case "SR2015 No 21":
                permitSelect = await this.selectPermit.permitSR2015No21Radio();
                permitSelect.click();
                break;
            case "SR2015 No 22":
                permitSelect = await this.selectPermit.permitSR2015No22Radio();
                permitSelect.click();
                break;
            case "SR2010 No 18":
                permitSelect = await this.selectPermit.permitSR2010No18Radio();
                permitSelect.click();
                break;
            case "SR2010 No 17":
                permitSelect = await this.selectPermit.permitSR2010No17Radio();
                permitSelect.click();
                break;
            case "SR2013 No 1":
                permitSelect = await this.selectPermit.permitSR2013No1Radio();
                permitSelect.click();
                break;
            case "SR2010 No 12":
                permitSelect = await this.selectPermit.permitSR2010No12Radio();
                permitSelect.click();
                break;
            case "SR2015 No 23":
                permitSelect = await this.selectPermit.permitSR2015No23Radio();
                permitSelect.click();
                break;
            case "SR2015 No 24":
                permitSelect = await this.selectPermit.permitSR2015No24Radio();
                permitSelect.click();
                break;
            case "SR2008 No 24":
                permitSelect = await this.selectPermit.permitSR2008No24Radio();
                permitSelect.click();
                break;
            case "SR2008 No 25":
                permitSelect = await this.selectPermit.permitSR2008No25Radio();
                permitSelect.click();
                break;
            case "SR2015 No 11":
                permitSelect = await this.selectPermit.permitSR2015No11Radio();
                permitSelect.click();
                break;
            case "SR2015 No 10":
                permitSelect = await this.selectPermit.permitSR2015No10Radio();
                permitSelect.click();
                break;
            case "SR2015 No 5":
                permitSelect = await this.selectPermit.permitSR2015No5Radio();
                permitSelect.click();
                break;
            case "SR2015 No 9":
                permitSelect = await this.selectPermit.permitSR2015No9Radio();
                permitSelect.click();
                break;
            case "SR2015 No 8":
                permitSelect = await this.selectPermit.permitSR2015No8Radio();
                permitSelect.click();
                break;
            case "SR2015 No 22":
                permitSelect = await this.selectPermit.permitSR2015No22Radio();
                permitSelect.click();
                break;
            case "SR2015 No 7":
                permitSelect = await this.selectPermit.permitSR2015No7Radio();
                permitSelect.click();
                break;
            case "SR2015 No 19":
                permitSelect = await this.selectPermit.permitSR2015No19Radio();
                permitSelect.click();
                break;
            case "SR2015 No 20":
                permitSelect = await this.selectPermit.permitSR2015No20Radio();
                permitSelect.click();
                break;
            case "SR2009 No 6":
                permitSelect = await this.selectPermit.permitSR2009No6Radio();
                permitSelect.click();
                break;
            case "SR2008 No 11":
                permitSelect = await this.selectPermit.permitSR2008No11Radio();
                permitSelect.click();
                break;
            case "SR2009 No 5":
                permitSelect = await this.selectPermit.permitSR2009No5Radio();
                permitSelect.click();
                break;
            case "SR2008 No 10":
                permitSelect = await this.selectPermit.permitSR2008No10Radio();
                permitSelect.click();
                break;
                case "SR2012 No 11":
                permitSelect = await this.selectPermit.permitSR2012No11Radio();
                permitSelect.click();
                break;
                case "SR2012 No 9":
                permitSelect = await this.selectPermit.permitSR2012No9Radio();
                permitSelect.click();
                break;
                case "SR2009 No 4":
                permitSelect = await this.selectPermit.permitSR2009No4Radio();
                permitSelect.click();
                break;
                case "SR2012 No 4":
                permitSelect = await this.selectPermit.permitSR2012No4Radio();
                permitSelect.click();
                break;
                case "SR2012 No 8":
                permitSelect = await this.selectPermit.permitSR2012No8Radio();
                permitSelect.click();
                break;
                case "SR2009 No 3":
                permitSelect = await this.selectPermit.permitSR2009No3Radio();
                permitSelect.click();
                break;
                case "SR2015 No 1":
                permitSelect = await this.selectPermit.permitSR2015No1Radio();
                permitSelect.click();
                break;
                case "SR2014 No 2":
                permitSelect = await this.selectPermit.permitSR2014No2Radio();
                permitSelect.click();
                break;
                case "SR2009 No 8":
                permitSelect = await this.selectPermit.permitSR2009No8Radio();
                permitSelect.click();
                break;
                case "SR2009 No 2":
                permitSelect = await this.selectPermit.permitSR2009No2Radio();
                permitSelect.click();
                break;
                case "SR2012 No 13":
                permitSelect = await this.selectPermit.permitSR2012No13Radio();
                permitSelect.click();
                break;    
            default: break;
        }
    });

};