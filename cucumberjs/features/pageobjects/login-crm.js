const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;

class LoginCRM {

    constructor(browser, testdata) {
        this.browser = browser;
        this.testdata = testdata;
    }

    waitUntilLoaded() {
        console.log("I am in wait until loaded");
        return this.browser.wait(until.elementLocated(By.id("loginHeader")), 5 * 20000);
    }

    loginHeader() {
        return this.browser.wait(until.elementLocated(By.id("loginHeader")), 5 * 20000);
    }

    useAnotherAccount() {
        return this.browser.wait(until.elementLocated(By.id("otherTile")), 5 * 20000);
    }

    inputUserName() {
        return this.browser.wait(until.elementLocated(By.name("loginfmt")), 5 * 20000);
    }

    inputUserName() {
        return this.browser.wait(until.elementLocated(By.name("loginfmt")), 5 * 20000);
    }

    inputUserPassword() {
        return this.browser.wait(until.elementLocated(By.name("passwd")), 5 * 20000);
    }

    nextButton() {
        return this.browser.wait(until.elementLocated(By.xpath("//input[contains(@type,'submit')]")), 5 * 20000);
    }

    signinButton() {
        return this.browser.wait(until.elementLocated(By.xpath("//input[contains(@value,'Sign in')]")), 5 * 20000);
    }

    staySignedInNoButton() {
        return this.browser.wait(until.elementLocated(By.id("idBtn_Back")), 5 * 20000);
    }

    header() {
        return this.browser.wait(until.elementLocated(By.id("navTourHeader")), 5 * 20000);
    }

    closePopup() {
       // return this.header.wait(until.elementLocated(By.xpath("//img[contains(@alt,'Close')]")), 5 * 20000);
        //this.browser.wait(until.elementLocated(By.xpath("//img[contains(@alt,'Close')]")), 5 * 20000);
        return this.browser.wait(until.elementLocated(By.id("buttonClose")), 5 * 200000);
    }

    loggedInPageUserProfileImage() {
        return this.browser.wait(until.elementLocated(By.class("navTabButtonUserInfoProfileImage")), 5 * 20000);
    }

}

module.exports.LoginCRM = LoginCRM;