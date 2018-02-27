const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class LoginCRM {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    async waitUntilLoaded() {
        console.log("I am in wait until loaded");
        return this.browser.wait(until.elementLocated(By.id("loginHeader")), 5 * 20000);
    }

    async loginHeader() {
        return this.browser.wait(until.elementLocated(By.id("loginHeader")), 5 * 20000);
    }

    async useAnotherAccount() {
        return this.browser.wait(until.elementLocated(By.id("otherTile")), 5 * 20000);
    }

    async inputUserName() {
        return this.browser.wait(until.elementLocated(By.name("loginfmt")), 5 * 20000);
    }

    async inputUserName() {
        return this.browser.wait(until.elementLocated(By.name("loginfmt")), 5 * 20000);
    }

    async inputUserPassword() {
        return this.browser.wait(until.elementLocated(By.name("passwd")), 5 * 20000);
    }

    async nextButton() {
        return this.browser.wait(until.elementLocated(By.xpath("//input[contains(@type,'submit')]")), 5 * 20000);
    }

    async signinButton() {
        return this.browser.wait(until.elementLocated(By.xpath("//input[contains(@value,'Sign in')]")), 5 * 20000);
    }

    async staySignedInNoButton() {
        return this.browser.wait(until.elementLocated(By.id("idBtn_Back")), 5 * 20000);
    }

    async header() {
        return this.browser.wait(until.elementLocated(By.id("navTourHeader")), 5 * 20000);
    }

    async closePopup() {
       // return this.header.wait(until.elementLocated(By.xpath("//img[contains(@alt,'Close')]")), 5 * 20000);
        //this.browser.wait(until.elementLocated(By.xpath("//img[contains(@alt,'Close')]")), 5 * 20000);
        return this.browser.wait(until.elementLocated(By.id("buttonClose")), 5 * 200000);
    }

    async navtourtitle() {
        //InlineDialog
        return this.browser.wait(until.elementLocated(By.xpath("//a[contains(@id,'buttonClose')]")), 5 * 20000);
       // return this.browser.wait(until.elementLocated(By.id("buttonClose")), 5 * 200000);
    }

    async navtitletext() {
        return navtourtitle.getAttribute("label");
    }

    async loggedInPageUserProfileImage() {
        return this.browser.wait(until.elementLocated(By.class("navTabButtonUserInfoProfileImage")), 5 * 20000);
    }

}

module.exports.LoginCRM = LoginCRM;