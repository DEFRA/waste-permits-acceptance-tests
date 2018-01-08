const nock = require("nock");

class Fakes {

	constructor(browser) {
		this.browser = browser;
	}

	loadLogin() {
		// nock.disableNetConnect();
		// nock("http://bbc.co.uk")
		// 	.post("/qsp/gateway/http/js/signonService/signonByUser")
		// 	//.query({ arg0: "test", arg1: "test" })
		// 	.reply(200, {
		// 		result: null,
		// 		resultCode: "0",
		// 		token: "",
		// 		requestId: "2125122925"
		// 	});

		// //nock.enableNetConnect();
	}
}


module.exports.Fakes = Fakes;
