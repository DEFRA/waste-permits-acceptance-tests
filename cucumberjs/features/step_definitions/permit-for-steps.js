const World = require("../support/world").World;
let radioButton;

module.exports = function () {

    this.World = World;

    //I select "Dummy category" option for pemit
    this.defineStep(/^I select "(.*?)" option for pemit$/, { timeout: 60000 }, async function (option) {
        switch (option) {
            case "Limited Company":
                radioButton = await this.permitFor.limitedCompanyRadio();
                radioButton.click();
                break;
            case "Car and vehicle dismantling":
                radioButton = await this.permitFor.carDismantlingRadio();
                radioButton.click();
                break;
            case "Mobile plant for land-spreading or treatment":
                radioButton = await this.permitFor.mobileLandSpreadingRadio();
                radioButton.click();
                break;
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
            case "Anaerobic digestion including storing digestate":
                radioButton = await this.permitFor.anaerobicDigestionRadio();
                radioButton.click();
                break;
            case "Waste transfer station or amenity site with or without treatment":
                radioButton = await this.permitFor.wasteTransferStationRadio();
                radioButton.click();
                break;
            case "Deposit for recovery":
                radioButton = await this.permitFor.depositForRecoveryRadio();
                radioButton.click();
                break;
            default: break;
        }
    });
};