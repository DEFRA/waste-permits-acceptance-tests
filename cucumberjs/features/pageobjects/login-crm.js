
const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;
const actionSequence = require('selenium-webdriver').ActionSequence;


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

    async closeCSS() {
        return this.browser.wait(until.elementLocated(By.css("img[alt='Close']")), 5 * 20000);;
    }

    async userName(user) {
        const user1 = "img[alt='"+ user +"']"
        console.log(user1);
        return this.browser.wait(until.elementLocated(By.css(user1)), 5 * 20000);;
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

    async pressEscape() {
        //const action = new Actions(this.browser);
        //Actions action = new Actions(driver);
        //return this.browser.SendKeys(Keys.Escape);
       //return System.Windows.Forms.SendKeys.SendWait("{ESC}");
       // return this.browser.sendKeys(Key.ESCAPE);
      //perform();
      //return ActionSequence.keyDown(webdriver.Key.ESCAPE).perform();
      this.sleep();
      console.log("ESCAPE");
      const actn = this.browser.ActionSequence()
      //const actions1 = this.browser.actions();
      await actn.press(ESCAPE).release(ESCAPE)
      return await actn.perform();
     //   return this.browser.SendKeys(Keys.ESCAPE);
     // return await new actionSequence(this.browser).sendKeys(this.browser.Keys.ESCAPE).perform();
     //  return webdriver.ActionSequence(this.browser).keyDown(Key.ESCAPE).perform()
       //return actn.perform();
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

    async lpTab() {
        return this.browser.wait(until.elementLocated(By.id("TabLP")), 5 * 20000);
    }

    async sleep() {
        return this.browser.sleep(7000);
    }

}

module.exports.LoginCRM = LoginCRM;