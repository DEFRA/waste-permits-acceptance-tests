//import { stringify } from "querystring";

const World = require("../support/world").World;

module.exports = function () {

    this.World = World;

    this.defineStep(/^I am on the CRM login page$/, { timeout: 60000 }, async function () {
        await this.loginCRM.waitUntilLoaded();
    });

    this.defineStep(/^I click on LP tab$/, { timeout: 60000 }, async function () {
        await this.loginCRM.pressEscape();
        const lp = await this.loginCRM.lpTab();
        await lp.click();
    });

    //Amruta Bendre EA-LP-CRM-QA
    this.defineStep(/^I am logged in to CRM as "(.*?)"$/, { timeout: 60000 }, async function (user) {
        await this.loginCRM.userName(user);
    });

    //And I login as "amruta.bendre@defradev.onmicrosoft.com" password "W@ste-Permits"
    this.defineStep(/^I login as "(.*?)" password "(.*?)"$/, { timeout: 60000 }, async function (username, password) {
        const name = await this.loginCRM.inputUserName();
        await name.sendKeys(username);
        const next = await this.loginCRM.nextButton();
        await next.click();
        const pass = await this.loginCRM.inputUserPassword();
        await pass.sendKeys(password);
        const signin = await this.loginCRM.signinButton();
        await signin.click();
        const staysignin = await this.loginCRM.staySignedInNoButton();
        await staysignin.click();
        // const title = await this.loginCRM.navtourtitle();
        // console.log(title);
        // const close = await this.loginCRM.closeCSS();
        // await close.click();


    });
};