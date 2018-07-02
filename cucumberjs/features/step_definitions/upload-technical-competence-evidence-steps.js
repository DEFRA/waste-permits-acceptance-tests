const World = require("../support/world").World;
const ks = require("node-key-sender");
const driver = require('selenium-webdriver');

module.exports = function () {

  this.World = World;


  this.defineStep(/^I should be able to see an error message "([^"]*)"$/, { timeout: 60000 }, function (message) {
   this.uploadTechCompetency.waitUntilErrorMessageLoaded(message);
  });

  this.defineStep(/^I select another file to upload$/, { timeout: 60000 }, async function () {
    const uploadAnother = await this.uploadTechCompetency.uploadAnotherFile();
    await uploadAnother.click();
   });


  this.defineStep(/^following are the options on the the technical qualifications page:$/, { timeout: 60000 }, function (table) {
    //const data = table.rowsHash();
    let list = table.rows();
    list.forEach(([element]) => {

      switch (element.trim()) {
        case "WAMITAB or EPOC qualification":
          this.uploadTechCompetency.wamitabLink();
          break;
        case "We’re getting WAMITAB or EPOC qualifications":
          this.uploadTechCompetency.gettingQualification();
          break;
        case "Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification":
          this.uploadTechCompetency.deemed();
          break;
        case "Energy & Utility Skills / ESA Competence Management System":
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
      case "WAMITAB or EPOC qualification":
        link = await this.uploadTechCompetency.wamitabLink();
        await link.click();
        break;
      case "We’re getting WAMITAB or EPOC qualifications":
        link = await this.uploadTechCompetency.gettingQualification();
        await link.click();
        break;
      case "Deemed competence or an Environment Agency assessment with WAMITAB continuing competence certification":
        link = await this.uploadTechCompetency.deemed();
        await link.click();
        break;
      case "Energy & Utility Skills / ESA Competence Management System":
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

  this.defineStep(/^I select doc file to upload$/, { timeout: 60000 }, async function () {
    const chooseFile = await this.uploadTechCompetency.chooseFile();
    await this.uploadTechCompetency.enterDOCFile();

  });

  this.defineStep(/^I select ppt file to upload$/, { timeout: 60000 }, async function () {
    const chooseFile = await this.uploadTechCompetency.chooseFile();
    await this.uploadTechCompetency.enterPPTFile();

  });


  this.defineStep(/^I select 40MB file to upload$/, { timeout: 20000000 }, async function () {
    const chooseFile = await this.uploadTechCompetency.chooseFile();
    await this.uploadTechCompetency.enter30MBPlusFile();

  });

  this.defineStep(/^I click on Upload chosen file$/, { timeout: 60000 }, async function () {
    const uploadChosenFile = await this.uploadTechCompetency.uploadChosenFile();
    //await uploadChosenFile.click();
  });

};