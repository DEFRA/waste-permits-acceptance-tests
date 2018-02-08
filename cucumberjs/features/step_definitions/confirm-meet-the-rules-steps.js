const World = require("../support/world").World;
const ks = require("node-key-sender");
const driver = require('selenium-webdriver');


module.exports = function () {

  this.World = World;
  
  this.defineStep(/^I click on "(.*?)" button on the Confirm you meet the rules page$/, { timeout: 60000 }, async function (button) {
    const confirmButton = await this.confirmRules.operationMeetsRulesButton();
   await confirmButton.click();
  });
 

};