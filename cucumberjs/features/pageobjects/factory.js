const Application = require("./application").Application;
const NewApplication = require("./new-application").NewApplication;
const SelectPermit = require("./select-permit").SelectPermit;
const SelectPayment = require("./select-payment").SelectPayment;
const SaveApplication = require("./save-application").SaveApplication;
const TaskList = require("./task-list").TaskList;
const UploadTechCompetency = require("./upload-tech-competency").UploadTechCompetency;
const LoginCRM = require("./login-crm").LoginCRM;
const Fakes = require("./fakes").Fakes;
const ConfirmRules = require("./confirm-meet-the-rules").ConfirmRules;
const CheckCost = require("./check-cost").CheckCost;
const GiveContactDetails = require("./give-contact-details").GiveContactDetails;
const GiveCompanyDetails = require("./give-company-details").GiveCompanyDetails;
const GiveInvoicingDetails = require("./give-invoicing-details").GiveInvoicingDetails;
const GiveSiteNameLocation = require("./give-site-name-location").GiveSiteNameLocation;
const ConfirmConfidentiality = require("./confirm-confidentiality-needs").ConfirmConfidentiality;
const ConfirmSuitableStorageArea = require("./confirm-suitable-storage-area").ConfirmSuitableStorageArea;
const PermitFor = require("./permit-for").PermitFor;
const PermitHolderDetails = require("./permit-holder-details").PermitHolderDetails;
const FirePreventionPlan = require("./fire-prevention-plan").FirePreventionPlan;
const WasteRecoveryPlan = require("./waste-recovery-plan").WasteRecoveryPlan;

class Factory {

	constructor(browser, testdata) {
		this.browser = browser;
		this.testdata = testdata;
		this.pages = {
			application: Application,
			newapplication: NewApplication,
			uploadtechcompetency: UploadTechCompetency,
			selectpermit: SelectPermit,
			selectpayment: SelectPayment,
			saveapplication: SaveApplication,
			tasklist: TaskList,
			confirmrules: ConfirmRules,
			checkcost: CheckCost,
			logincrm: LoginCRM,
			fakes: Fakes,
			givecontactdetails: GiveContactDetails,
			givecompanydetails: GiveCompanyDetails,
			givesitenamelocation: GiveSiteNameLocation,
			giveinvoicingdetails: GiveInvoicingDetails,
			confirmConfidentiality: ConfirmConfidentiality,
			confirmsuitablestoragearea: ConfirmSuitableStorageArea,
			permitfor: PermitFor,
			permitholderdetails: PermitHolderDetails,
			wasterecoveryplan: WasteRecoveryPlan,
			firepreventionplan: FirePreventionPlan

		};
	}

	create(name) {
		const pageClass = this.pages[name];
		if (pageClass === null) throw new Error("Page not found");
		return new pageClass(this.browser, this.testdata);
	}
}

module.exports.Factory = Factory;
