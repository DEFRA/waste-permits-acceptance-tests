const World = require("../support/world").World;
const ks = require("node-key-sender");
const driver = require('selenium-webdriver');
const Assert = require("assert");


module.exports = function () {

  this.World = World;

  this.defineStep(/^I click on "(.*?)" button on the Confirm you meet the rules page$/, { timeout: 60000 }, async function (button) {
    const confirmButton = await this.confirmRules.operationMeetsRulesButton();
    await confirmButton.click();
  });

  //When I enter "Eadyn365test@gmail.com" in the email
  this.defineStep(/^I enter "([^"]*)" in the email$/, { timeout: 60000 }, async function (emailid) {
    const email = await this.confirmRules.emailaddr();
    await email.sendKeys(emailid);
  });

  //And the cost to apply is "3,926"
  this.defineStep(/^the cost to apply is "([^"]*)"$/, { timeout: 60000 }, async function (cost) {
    fieldText = await this.confirmRules.cost();
    actualtext = await this.confirmRules.getTextElement(fieldText);
    Assert.equal(actualtext, cost, "Incorrect cost");
  });


  //And the time to wait is "up to 13 weeks"
  this.defineStep(/^the time to wait is "([^"]*)"$/, { timeout: 60000 }, async function (time) {
    fieldText = await this.confirmRules.timeForApplication();
    actualtext = await this.confirmRules.getTextElement(fieldText);
    Assert.equal(actualtext, time, "Incorrect time");
  });

};