//And I select a permit "SR2010-No-4"

const World = require("../support/world").World;

module.exports = function () {

    this.World = World;

    this.defineStep(/^I select a permit "(.*?)"$/, async function (option) {
        switch (option) {
            case "SR2010-No-4":
                const permitSR2010No4Radio = await this.selectPermit.permitSR2010No4Radio();
                permitSR2010No4Radio.click();
                break;
            case "SR2010-No-6":
                const permitSR2010N6Radio = await this.selectPermit.permitSR2010N6Radio();
                permitSR2010N6Radio.click();
                break;
            case "SR2010-No-5":
                const permitSR2010No5Radio = await this.selectPermit.permitSR2010No5Radio();
                permitSR2010No5Radio.click();
                break;
            case "SR2010-No-27":
                const openApplication = await this.selectPermit.permitSR2010No27Radio();
                openApplication.click();
                break;
            case "SR2010-No-11":
                const permitSR2010No27Radio = await this.selectPermit.permitSR201No11Radio();
                permitSR2010No27Radio.click();
                break;
            default: break;
        }
    });

};