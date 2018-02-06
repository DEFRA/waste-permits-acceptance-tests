const World = require("../support/world").World;
const ks = require("node-key-sender");
const driver = require('selenium-webdriver');


module.exports = function () {

  this.World = World;

  
  this.defineStep(/^I should be able to see an error message "([^"]*)"$/, { timeout: 60000 }, function (message) {
  this.uploadTechCompetency.waitUntilErrorMessageLoaded(message);
});

  this.defineStep(/^following are the options on the the technical qualifications page:$/, { timeout: 60000 }, function (table) {
    //const data = table.rowsHash();
    let list = table.rows();
    list.forEach(([element]) => {

      switch (element.trim()) {
        case "WAMITAB qualification":
        this.uploadTechCompetency.wamitabLink();
          break;
        case "Registered on a course - grace period":
        this.uploadTechCompetency.gettingQualification();
          break;
        case "Deemed competence":
        this.uploadTechCompetency.deemed();
          break;
        case "ESA/EU skills":
        this.uploadTechCompetency.esaEU();
          break;
        default: break;
      }

    });
  });

  // When 
  this.defineStep(/^I click on "(.*?)" on the Upload technical management qualifications page$/, { timeout: 60000 }, async function (option) {
   let link;
   switch (option) {
    case "WAMITAB qualification":
      link = await this.uploadTechCompetency.wamitabLink();
      await link.click();
      break;
    case "Registered on a course - grace period":
      link = await this.uploadTechCompetency.gettingQualification();
      await link.click();
      break;
    case "Deemed competence":
      link = await this.uploadTechCompetency.deemed();
      await link.click();
      break;
    case "ESA/EU skills":
      link = await this.uploadTechCompetency.esaEU();
      await link.click();
      break;
    default: break;
  }



  });
 
  this.defineStep(/^I click back$/, { timeout: 60000 }, async function () {
    const backlink = await this.uploadTechCompetency.backLink();
   await backlink.click();
  });

  this.defineStep(/^I select img file to upload$/, { timeout: 60000 }, async function () {
    const chooseFile = await this.uploadTechCompetency.chooseFile();
  await this.uploadTechCompetency.enterJPGFile();

  });

  this.defineStep(/^I select pdf file to upload$/, { timeout: 60000 }, async function () {
    const chooseFile = await this.uploadTechCompetency.chooseFile();
  await this.uploadTechCompetency.enterPDFFile();

  });

  this.defineStep(/^I select ppt file to upload$/, { timeout: 60000 }, async function () {
    const chooseFile = await this.uploadTechCompetency.chooseFile();
  await this.uploadTechCompetency.enterPPTFile();

  });

  
  this.defineStep(/^I select 40MB file to upload$/, { timeout: 60000 }, async function () {
    const chooseFile = await this.uploadTechCompetency.chooseFile();
  await this.uploadTechCompetency.enter30MBPlusFile();

  });

  this.defineStep(/^I click on Upload chosen file$/, { timeout: 60000 }, async function () {
    const uploadChosenFile = await this.uploadTechCompetency.uploadChosenFile();
   //await uploadChosenFile.click();
  });

};