//import { stringify } from "querystring";

const World = require("../support/world").World;

module.exports = function () {

    this.World = World;

    this.defineStep(/^I am on the CRM login page$/, { timeout: 60000 }, async function () {
        await this.loginCRM.waitUntilLoaded();
    });

    this.defineStep(/^I click on LP tab$/, { timeout: 60000 }, async function () {
        const lp = await this.loginCRM.lpTab();
        await lp.click();
    });


    this.defineStep(/^I click on the New Application button$/, { timeout: 60000 }, async function () {
        const newapp = await this.loginCRM.newApplication();
        await newapp.click();
    });

    //Amruta Bendre EA-LP-CRM-QA
    this.defineStep(/^I am logged in to CRM as "(.*?)"$/, { timeout: 60000 }, async function (user) {
        await this.loginCRM.userName(user);
    });

    this.defineStep(/^I select "(.*?)" from the LP menu$/, { timeout: 60000 }, async function (user) {
        const appln = await this.loginCRM.applicationLP();
        await appln.click();
    });


    this.defineStep(/^I am on the Applications page$/, { timeout: 60000 }, async function () {
        await this.loginCRM.applicationsMenu();
    });

    this.defineStep(/^I am on the New Applications page$/, { timeout: 60000 }, async function () {
        await this.loginCRM.newapplicationTitle();
    });

    this.defineStep(/^I enter "(.*?)" in the search criteria$/, { timeout: 60000 }, async function (cust) {
        const appln = await this.loginCRM.searchApplication();
        //await appln.click();
        await appln.sendKeys(cust);
    });

    this.defineStep(/^I enter "(.*?)" in the customer id field$/, { timeout: 60000 }, async function (cust) {
        // const formNav = await this.loginCRM.formNavigation();
        // await formNav.click();
        // const applnsel = await this.loginCRM.selectCust();
        // await applnsel.click();

        const appln = await this.loginCRM.customerID();
        await appln.click();
        await appln.sendKeys(cust);
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
    });
};