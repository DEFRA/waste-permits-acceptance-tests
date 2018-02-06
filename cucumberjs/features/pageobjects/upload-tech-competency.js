const webdriver = require("selenium-webdriver");
const ks = require("node-key-sender");
//const robot = require("robotjs");
//const keys = require("org.openqa.selenium.Keys");
const By = webdriver.By;
const until = webdriver.until;

class UploadTechCompetency {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }


    async wamitabLink() {
        return await this.browser.wait(until.elementLocated(By.id("wamitab")), 5 * 20000);
    }


    async gettingQualification() {
        return await this.browser.wait(until.elementLocated(By.id("getting-qualification")), 5 * 20000);
    }

    async deemed() {
        return await this.browser.wait(until.elementLocated(By.id("deemed")), 5 * 20000);
    }


    async esaEU() {
        return await this.browser.wait(until.elementLocated(By.id("esa-eu")), 5 * 20000);
    }

    async chooseFile() {


        return await this.browser.wait(until.elementLocated(By.id("file")), 5 * 20000);
    }

    async errorMessage() {
        return await this.browser.wait(until.elementLocated(By.id("error-summary-list")), 5 * 20000);
    }

    waitUntilErrorMessageLoaded(title) {
        return this.browser.wait(until.elementLocated(By.xpath(`//a[contains(text(),"${title}")]`)), 5 * 20000);
    }


    async enterPPTFile() {
        const usernameElement = await this.chooseFile();
        const path = require("path");
        const download = require('image-downloader');

        // Download to a directory and save with the original filename
        const options = {
            url: 'https://scholar.harvard.edu/files/torman_personal/files/samplepptx.pptx',
            dest: __dirname                  // Save to /path/to/dest/image.jpg
        };

        const { filename, image } = await download.image(options);

        await usernameElement.sendKeys(filename);
        await usernameElement.submit();
        
    }

    async enter30MBPlusFile() {
        const usernameElement = await this.chooseFile();
        const path = require("path");
        const download = require('image-downloader');

        // Download to a directory and save with the original filename
        const options = {
            url: 'https://eoimages.gsfc.nasa.gov/images/imagerecords/73000/73751/world.topo.bathy.200407.3x21600x21600.C1.jpg',
            dest: __dirname                  // Save to /path/to/dest/image.jpg
        };

        const { filename, image } = await download.image(options);

        await usernameElement.sendKeys(filename);
        await usernameElement.submit();
        
    }

    async enterPDFFile() {
        const usernameElement = await this.chooseFile();
        const path = require("path");
        const download = require('image-downloader');

        // Download to a directory and save with the original filename
        const options = {
            url: 'http://apps.who.int/iris/bitstream/10665/137592/1/roadmapsitrep_7Nov2014_eng.pdf',
            dest: __dirname                  // Save to /path/to/dest/image.jpg
        };

        const { filename, image } = await download.image(options);

        await usernameElement.sendKeys(filename);
        await usernameElement.submit();

    }


    async enterJPGFile() {
        const usernameElement = await this.chooseFile();
        const path = require("path");
     
        const download = require('image-downloader');

        // Download to a directory and save with the original filename
        const options = {
            url: 'https://upload.wikimedia.org/wikipedia/en/a/a9/Example.jpg',
            dest: __dirname                  // Save to /path/to/dest/image.jpg
        };

        const { filename, image } = await download.image(options);
  
        await usernameElement.sendKeys(filename);
        await usernameElement.submit();

    }

    async uploadChosenFile() {
        return await this.browser.wait(until.elementLocated(By.id("submit-upload")), 5 * 20000);
    }

    async backLink() {
        return await this.browser.wait(until.elementLocated(By.id("back-link")), 5 * 20000);
    }

}

module.exports.UploadTechCompetency = UploadTechCompetency;