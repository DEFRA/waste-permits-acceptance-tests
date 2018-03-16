const World = require("../support/world").World;
let radioButton;

module.exports = function () {

    this.World = World;

    //I select "Dummy category" option for pemit
    this.defineStep(/^I select "(.*?)" option for pemit$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "Dummy category":
                radioButton = await this.permitFor.dummyCategoryRadio();
                radioButton.click();
                break;
            case "Flood risk activities":
                radioButton = await this.permitFor.floodRiskActivitiesRadio();
                radioButton.click();
                break;
            case "Radioactive substances for non-nuclear sites":
                radioButton = await this.permitFor.radioactiveSubstanceNonNuclearSiteRadio();
                radioButton.click();
                break;
            case "Water discharges":
                radioButton = await this.permitFor.waterDischargesRadio();
                radioButton.click();
                break;
            default: break;
        }
    });
};