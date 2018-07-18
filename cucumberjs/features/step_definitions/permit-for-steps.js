const World = require("../support/world").World;
let radioButton;

module.exports = function () {

    this.World = World;

    //I select "Dummy category" option for pemit
    this.defineStep(/^I select "(.*?)" option for pemit$/, { timeout: 2000000 }, async function (option) {
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
            case "Composting, sewage or sludge treatment, biogas":
                radioButton = await this.permitFor.compostSewageBiogasRadio();
                radioButton.click();
                break;
            case "Electrical insulating oil storage":
                radioButton = await this.permitFor.electricalInsulatingRadio();
                radioButton.click();
                break;
            case "Metal recycling, scrap metal and WEEE - not cars or vehicles":
                radioButton = await this.permitFor.metalRecyclingRadio();
                radioButton.click();
                break;
            case "Mining, oil and gas":
                radioButton = await this.permitFor.miningRadio();
                radioButton.click();
                break;
            case "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment":
                radioButton = await this.permitFor.storageTreatmentRecyclingRadio();
                radioButton.click();
                break;
            case "Waste transfer station or amenity site with or without treatment":
                radioButton = await this.permitFor.wasteTransferStationRadio();
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