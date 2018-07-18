/* eslint-disable no-param-reassign */
const World = require("../support/world").World;
const Assert = require("assert");

const PermitHolders = {
	limitedCompany: {
		name: "Limited company",
		companyNumberTitle: "What is the UK company registration number?",
		companyCheckTitle: "Is this the right company?",
		companyEmailTitle: "What is the email address for the Company Secretary or a director?",
		companyDOBTitle: "What is the director's date of birth?",
		convictionTitle: "Does anyone connected with your business have a conviction for a relevant offence?",
		bankruptcyTitle: "Do you have current or past bankruptcy or insolvency proceedings to declare?",
		companyNumber: "06136739",
		companyTradingName: "Testers Ltd",
		companyEmail: "dwp3.test@defra.test.gov.uk",
		conviction: "This is a test conviction",
		bankruptcy: "This is a test bankruptcy",
		officers: [
            { dob: { day: "10" } }
		]
	},
	soleTrader: {
		name: "Sole trader",
		permitHolderTitle: "Who will be the permit holder?",
		permitHolderTradingTitle: "Do they do business using their own name or a trading name?",
		permitHolderContactTitle: "What are the permit holder's contact details?",
		permitHolderAddressTitle: "What is their address?",
		convictionTitle: "Does anyone connected with your business have a conviction for a relevant offence?",
		bankruptcyTitle: "Do you have current or past bankruptcy or insolvency proceedings to declare?",
		conviction: "This is a test conviction",
		bankruptcy: "This is a test bankruptcy"
	},
	individualTrader: {
		name: "Individual",
		permitHolderTitle: "Who will be the permit holder?",
		permitHolderTradingTitle: "Do they do business using their own name or a trading name?",
		permitHolderContactTitle: "What are the permit holder's contact details?",
		permitHolderAddressTitle: "What is their address?",
		convictionTitle: "Does anyone connected with your business have a conviction for a relevant offence?",
		bankruptcyTitle: "Do you have current or past bankruptcy or insolvency proceedings to declare?",
		conviction: "This is a test conviction",
		bankruptcy: "This is a test bankruptcy"
	},
	localAuthority: {
		name: "Local authority or public body"
	},
	partnership: {
		name: "Partnership"
	},
	registeredCharity: {
		name: "Registered charity"
	},
	limitedLiabilityPartnership: {
		name: "Limited liability partnership",
		companyNumberTitle: "What is the company number for the limited liability partnership?",
		companyCheckTitle: "Is this the right limited liability partnership?",
		companyEmailTitle: "Email address for one of the designated members",
		companyDOBTitle: "What is the member's date of birth?",
		convictionTitle: "Does anyone connected with your business have a conviction for a relevant offence?",
		bankruptcyTitle: "Do you have current or past bankruptcy or insolvency proceedings to declare?",
		companyNumber: "OC353216",
		companyTradingName: "Testers LLP",
		companyEmail: "dwp3.test@defra.test.gov.uk",
		conviction: "This is a test conviction",
		bankruptcy: "This is a test bankruptcy",
		officers: [
            { dob: { day: "10" } }
		]
	},
	otherOrganisations: {
		name: "Other organisation, for example a club or association"
	}
};

const PermitCategories = {
	anaerobicDigestion: {
		name: "Anaerobic digestion including storing digestate"
	},
	carDismantling: {
		name: "Car and vehicle dismantling"
	},
	compost: {
		name: "Composting, sewage or sludge treatment, biogas"
	},
	depositOfRecovery: {
		name: "Deposit for recovery"
	},
	electricalInsulating: {
		name: "Electrical insulating oil storage"
	},
	floodRiskActivities: {
		name: "Flood risk activities"
	},
	metalRecycling: {
		name: "Metal recycling, scrap metal and WEEE - not cars or vehicles"
	},
	mining: {
		name: "Mining, oil and gas"
	},
	mobilePlant: {
		name: "Mobile plant for land-spreading or treatment"
	},
	radioactiveSubstanceNonNuclearSite: {
		name: "Radioactive substances for non-nuclear sites"
	},
	storageTreatmentRecycling: {
		name: "Storage or treatment of waste - recycling, dredgings, clinical, soil or wood treatment"
	},
	wasteTransferStation: {
		name: "Waste transfer station or amenity site with or without treatment"
	},
	waterDischarges: {
		name: "Water discharges"
	}
};

const saveApplicationEmail = "dwp1.test@defra.test.gov.uk";

const contact = {
	firstName: "James",
	lastName: "Bond",
	agent: "Anything Ltd",
	telephone: "1234567890",
	email: "dwp2.test@defra.test.gov.uk",
	dob: {
		day: "1",
		month: "2",
		year: "1953",
	},
	tradingName: "We trade anything",
};

const address = {
	buildingNameOrNumber: "10",
	addressLine1: "Easy Street",
	addressLine2: "",
	townOrCity: "Simple Town",
	postcode: "BS1 5AH"
};

function getKey(config, title) {
	return Object.entries(config)
        .filter(([, { name }]) => name === title)
        .map(([key]) => key)
        .pop();
}

async function waitForPage(pageObject, title) {
	const expectedTitle = title || pageObject.pageTitle;
	const titleText = await pageObject.waitUntilLoaded();
	const actualtext = await titleText.getText();
	Assert.equal(actualtext, expectedTitle, "Incorrect title Expected: " + expectedTitle + " Actual title is :" + actualtext);
}

async function waitFor(pageObject, field) {
	await pageObject[field];
}

async function click(pageObject, id) {
	try {
		const continueButton = await pageObject[id]();
		await continueButton.click();
	} catch (e) {
		throw new Error(`Unable to find ${id} in ${pageObject.constructor.name}`);
	}
}

async function input(pageObject, id, key, text) {
	if (text === undefined) {
		text = key;
		key = undefined;
	}
	try {
		const input = await pageObject[id](key);
		await input.sendKeys(text);
	} catch (e) {
		throw new Error(`Unable to find ${id} in ${pageObject.constructor.name} where text was ${text}`);
	}
}

module.exports = function () {
	this.World = World;

	this.defineStep(/^I start a new application$/, { timeout: 60000 }, async function () {
		await waitForPage(this.newApplication, "Apply for a standard rules environmental permit");
		await click(this.newApplication, "startApplicationRadio");
		await click(this.newApplication, "continueButton");
	});

	this.defineStep(/^I select "([^"]*)" as the permit holder$/, { timeout: 60000 }, async function (permitHolder) {
		await waitForPage(this.permitFor, "Who will be the permit holder?");
		await click(this.permitFor, `${getKey(PermitHolders, permitHolder)}Radio`);
		await click(this.permitFor, "continueButton");
	});

	this.defineStep(/^I select "([^"]*)" as the permit category$/, { timeout: 60000 }, async function (permitCategory) {
		await waitForPage(this.permitFor, "What do you want the permit for?");
		await click(this.permitFor, `${getKey(PermitCategories, permitCategory)}Radio`);
		await click(this.permitFor, "continueButton");
	});

	this.defineStep(/^I select "([^"]*)" as the permit number$/, { timeout: 60000 }, async function (permit) {
		await waitForPage(this.selectPermit, "Select a permit");
		await click(this.selectPermit, `permit${permit.replace(/ /g, "")}Radio`);
		await click(this.selectPermit, "continueButton");
	});

	this.defineStep(/^I check costs$/, { timeout: 60000 }, async function () {
		await waitForPage(this.taskList);
		await click(this.taskList, "checkCostAndProcessingTime");

		await waitForPage(this.checkCost, "Costs and processing time");
		await click(this.checkCost, "continueButton");

		await waitForPage(this.taskList);
		await this.taskList.confirmCostProcessingTimeCompleted();
	});

	this.defineStep(/^I confirm I meet the rules$/, { timeout: 60000 }, async function () {
		await waitForPage(this.taskList);
		await click(this.taskList, "confirmThatYourOperationMeetsRulesLink");

		await waitForPage(this.confirmRules, "Confirm your operation meets the rules");
		await click(this.confirmRules, "operationMeetsRulesButton");

		await waitForPage(this.taskList);
		await this.taskList.confirmRulesCompleted();
	});

	this.defineStep(/^I "(.*?)" suitable vehicle storage$/, { timeout: 60000 }, async function (confirm) {
		await waitForPage(this.taskList);
		if (confirm === "confirm") {
			await waitForPage(this.taskList);
			await click(this.taskList, "drainageSystemForVehicleStorageAreaLink");

			await waitForPage(this.confirmSuitableStorageArea, "Where does the vehicle storage area drain to?");
			await click(this.confirmSuitableStorageArea, "sewerRadio");
			await click(this.confirmSuitableStorageArea, "continueButton");

			await waitForPage(this.taskList);
			await this.taskList.confirmRulesCompleted();
		}
	});

	this.defineStep(/^I save my application$/, { timeout: 60000 }, async function () {
		await waitForPage(this.taskList);
		await click(this.taskList, "saveYourApplication");

		await waitForPage(this.saveApplication, "Save your application");
		await input(this.saveApplication, "email", saveApplicationEmail);
		await click(this.saveApplication, "continueButton");

		await waitForPage(this.saveApplication, "Make sure this is right");
		await click(this.saveApplication, "continueButton");

		await waitForPage(this.saveApplication, "Check your email");
		await click(this.saveApplication, "gotemail");
		await click(this.saveApplication, "continueButton");

		await waitForPage(this.taskList);
		await this.taskList.saveApplicationCompleted();
	});

	this.defineStep(/^I "(.*?)" the waste recovery plan$/, { timeout: 60000 }, async function (upload) {
		await waitForPage(this.taskList);
		if (upload === "upload") {
			await waitForPage(this.taskList);
			await click(this.taskList, "wasteRecoveryPlanLink");

			await waitForPage(this.wasteRecoveryPlan, "You need to upload your waste recovery plan");
			await click(this.wasteRecoveryPlan, "yesRadio");
			await click(this.wasteRecoveryPlan, "continueButton");

			await this.wasteRecoveryPlan.uploadFile();
			await click(this.wasteRecoveryPlan, "continueButton");

			await waitForPage(this.taskList);
			await this.taskList.wasteRecoveryPlanCompleted();
		}
	});

	this.defineStep(/^I "(.*?)" the fire plan$/, { timeout: 60000 }, async function (upload) {
		await waitForPage(this.taskList);
		if (upload === "upload") {
			await waitForPage(this.taskList);
			await click(this.taskList, "uploadFirePreventionPlanLink");

			await this.firePreventionPlan.uploadFile();
			await click(this.firePreventionPlan, "continueButton");

			await waitForPage(this.taskList);
			await this.taskList.uploadFirePreventionPlanCompleted();
		}
	});

	this.defineStep(/^I enter my contact details$/, { timeout: 60000 }, async function () {
		await waitForPage(this.taskList);
		await click(this.taskList, "giveContactDetailsLink");

		await waitForPage(this.giveContactDetails, "Who should we contact about this application?");
		await input(this.giveContactDetails, "firstNameField", contact.firstName);
		await input(this.giveContactDetails, "lastNameField", contact.lastName);
		await click(this.giveContactDetails, "agentCompanyCheckBox");
		await input(this.giveContactDetails, "agentCompanyField", contact.agent);
		await input(this.giveContactDetails, "telephoneField", contact.telephone);
		await input(this.giveContactDetails, "emailField", contact.email);
		await click(this.giveContactDetails, "continueButton");

		await waitForPage(this.taskList);
		await this.taskList.giveContactDetailsCompleted();
	});

	this.defineStep(/^I enter my permit holder details for a "([^"]*)"$/, { timeout: 60000 }, async function (permitHolder) {
		const key = getKey(PermitHolders, permitHolder);
		const permitHolderType = PermitHolders[key];

		const {
            companyNumberTitle,
            companyCheckTitle,
            companyEmailTitle,
            companyDOBTitle,
            permitHolderTitle,
            permitHolderTradingTitle,
            permitHolderContactTitle,
            permitHolderAddressTitle,
            convictionTitle,
            bankruptcyTitle,
            companyNumber,
            companyTradingName,
            companyEmail,
            conviction,
            bankruptcy,
            officers,
        } = permitHolderType;

		await waitForPage(this.taskList);
		await click(this.taskList, "givePermitHolderDetailsLink");

		switch (permitHolderType) {
			case PermitHolders.soleTrader:
			case PermitHolders.individualTrader:
				await waitForPage(this.permitHolderDetails, permitHolderTitle);
				await input(this.permitHolderDetails, "firstNameField", contact.firstName);
				await input(this.permitHolderDetails, "lastNameField", contact.lastName);
				await input(this.permitHolderDetails, "dayField", contact.dob.day);
				await input(this.permitHolderDetails, "monthField", contact.dob.month);
				await input(this.permitHolderDetails, "yearField", contact.dob.year);
				await click(this.permitHolderDetails, "continueButton");

				if (permitHolderType === PermitHolders.soleTrader) {
					await waitForPage(this.permitHolderDetails, permitHolderTradingTitle);
					await click(this.permitHolderDetails, "tradingNameCheckbox");
					await input(this.permitHolderDetails, "tradingNameField", contact.tradingName);
					await click(this.permitHolderDetails, "continueButton");
				}

				await waitForPage(this.permitHolderDetails, permitHolderContactTitle);
				await input(this.permitHolderDetails, "emailField", contact.email);
				await input(this.permitHolderDetails, "telephoneField", contact.telephone);
				await click(this.permitHolderDetails, "continueButton");

				await waitForPage(this.permitHolderDetails, permitHolderAddressTitle);
				await click(this.permitHolderDetails, "manualAddressLink");

				await waitForPage(this.permitHolderDetails, permitHolderAddressTitle);
				await waitFor(this.permitHolderDetails, "buildingNameOrNumberField");
				await input(this.permitHolderDetails, "buildingNameOrNumberField", address.buildingNameOrNumber);
				await input(this.permitHolderDetails, "addressLine1Field", address.addressLine1);
				await input(this.permitHolderDetails, "addressLine2Field", address.addressLine2);
				await input(this.permitHolderDetails, "townOrCityField", address.townOrCity);
				await input(this.permitHolderDetails, "postCodeEntryField", address.postcode);
				await click(this.permitHolderDetails, "continueButton");

				break;

			case PermitHolders.limitedCompany:
			case PermitHolders.limitedLiabilityPartnership:
				await waitForPage(this.giveCompanyDetails, companyNumberTitle);
				await input(this.giveCompanyDetails, "enterCompanyNumberField", companyNumber);
				await click(this.giveCompanyDetails, "continueButton");

				await waitForPage(this.giveCompanyDetails, companyCheckTitle);
				await click(this.giveCompanyDetails, "differentTradingNameCheckbox");
				await input(this.giveCompanyDetails, "businessTradingName", companyTradingName);
				await click(this.giveCompanyDetails, "continueButton");

				await waitForPage(this.giveCompanyDetails, companyDOBTitle);
				await input(this.giveCompanyDetails, "directorDOBDayField", 1, officers[0].dob.day);
				await click(this.giveCompanyDetails, "continueButton");

				await waitForPage(this.giveCompanyDetails, companyEmailTitle);
				await input(this.giveCompanyDetails, "companySecretaryEmailField", companyEmail);
				await click(this.giveCompanyDetails, "continueButton");

				break;

		}

		await waitForPage(this.giveCompanyDetails, convictionTitle);
		await click(this.giveCompanyDetails, "declaredRadio");
		await input(this.giveCompanyDetails, "declaredTextField", conviction);
		await click(this.giveCompanyDetails, "continueButton");

		await waitForPage(this.giveCompanyDetails, bankruptcyTitle);
		await click(this.giveCompanyDetails, "declaredRadio");
		await input(this.giveCompanyDetails, "declaredTextField", bankruptcy);
		await click(this.giveCompanyDetails, "continueButton");

		await waitForPage(this.taskList);
		await this.taskList.giveCompanyDetailsCompleted();
	});
};

