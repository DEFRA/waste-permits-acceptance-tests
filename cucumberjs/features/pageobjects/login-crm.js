
const webdriver = require("selenium-webdriver");
const By = webdriver.By;
const until = webdriver.until;
const alert = require("selenium-webdriver").Alert;


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
        return this.browser.wait(until.elementLocated(By.css("div[className='navTourClose']")), 5 * 20000);;
    }


    async applicationLP() {
        return this.browser.wait(until.elementLocated(By.css("a[title='Applications']")), 5 * 20000);;
    }

    async applicationsMenu() {
        return this.browser.wait(until.elementLocated(By.css("ul[role='application']")), 5 * 20000);;
    }
    async newApplication() {
        
        return this.browser.wait(until.elementLocated(By.css("h1[title='New Application']")), 5 * 20000);;
    }

    async newapplicationTitle() {
        return this.browser.wait(until.elementLocated(By.className("ms-crm-CommandBarItem ms-crm-CommandBar-Menu ms-crm-CommandBar-Button")), 5 * 20000);;
    }

    //
    async formNavigation() {
        return this.browser.wait(until.elementLocated(By.css("img[src='/_imgs/formsections_navigationflyout_button.png']")), 5 * 20000);
    }

    //
    async selectCust() {
        return this.browser.wait(until.elementLocated(By.css("td[title='CUSTOMER']")), 5 * 20000);
    }

    async customerID() {
        return this.browser.wait(until.elementLocated(By.id("header_process_defra_customerid_lookupValue")), 5 * 20000);
    }

    async userName(user) {
        const user1 = "img[alt='" + user + "']"
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

    async searchApplication() {
        return this.browser.wait(until.elementLocated(By.xpath("//input[contains(@class,'ms-crm-Dialog-Lookup-QuickFind')]")), 5 * 20000);
    }


    async getTextElement(element) {
        return element.getText();
    }

    async pressEscape() {
        this.sleep();
        console.log("ESCAPE");
        return await this.browser.switchTo().alert().dismiss();



    }

    async header() {
        return this.browser.wait(until.elementLocated(By.className("navTourTitleText")), 5 * 20000);
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
        return this.browser.wait(until.elementLocated(By.className("navTabButtonUserInfoProfileImage")), 5 * 20000);
    }

    async lpTab() {
        return this.browser.wait(until.elementLocated(By.id("TabLP")), 5 * 20000);
    }

    async sleep() {
        return this.browser.sleep(7000);
    }

}

module.exports.LoginCRM = LoginCRM;