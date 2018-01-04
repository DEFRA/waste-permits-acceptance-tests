module.exports.postInterceptions = function() {

	var postInterceptionArray = [
		{
			url: 'http://bbc.co.uk',
			args: 'arg0=test&arg1=test',
			response: {"result":null,"resultCode":"0","token":"found","requestId":2108882626}
		}
	]

	function registerGetInterceptor(url, response) {
		XMLHttpRequest.register("GET", url, function(req) {
			this.json(response);
		});
	}

	function registerGetInterceptions (getInterceptionLookup) {
		for (interceptionUrl in getInterceptionLookup) {
			if (getInterceptionLookup.hasOwnProperty(interceptionUrl)) {
				registerGetInterceptor(interceptionUrl, getInterceptionLookup[interceptionUrl].response);
			}
		}
	}

	function registerPostInterceptor(url) {
		XMLHttpRequest.register("POST", url, function(req) {
			var j;
			for (j = 0; j < postInterceptionArray.length; j++) {
				if (postInterceptionArray[j].url === url && (!postInterceptionArray[j].args || req === postInterceptionArray[j].args)) {
					this.json(postInterceptionArray[j].response);
					return;
				}
			}
			if (this._nodeRequest) {
			this._nodeRequestArgs.data = data;
			this._nodeRequest.send(JSON.stringify(this._nodeRequestArgs));
			this._nodeRequest = null;
			this._nodeRequestArgs = {};
			}
			this.proxy(this._data);
		});
	}

	var interceptionUrl;
	var i;
	var postInterceptionLookup = {};

	registerGetInterceptions($MSUI.getInterceptionLookup);

	for (i = 0; i < postInterceptionArray.length; i++) {
		if (!postInterceptionLookup[postInterceptionArray[i].url]) {
			registerPostInterceptor(postInterceptionArray[i].url);
			postInterceptionLookup[postInterceptionArray[i].url] = true;
		}
	}
}
