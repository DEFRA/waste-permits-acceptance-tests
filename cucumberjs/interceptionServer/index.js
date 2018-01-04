const http = require("http");
const request = require("request");
const fs = require("fs");
const getFile = "get.txt";
const postFile = "post.txt";
const urlLookup = {};


const server = http.createServer((req, res) => {

	req.on("data", (data) => {
		body += data;
	});
	req.on("end", () => {
		const obj = JSON.parse(body),
			url = obj.url,
			method = obj.method,
			params = obj.data,
			reqUrl = method === "POST" ? url + "?" + params : url,
			str = "";
		if (url && url.indexOf("http") === 0) {
			if (!urlLookup[url]) {
				urlLookup[url] = true;
				request[method.toLowerCase()](reqUrl, function (err, httpResponse, body) {
					if (method === "GET") {
						str += "\t'" + url + "':{\n";
						str += "\t\tresponse: " + body + "\n";
						str += "\t},\n";
						str += "\n";
						fs.appendFile(getFile, str);
					} else if (method === "POST") {
						str += "\t{\n";
						str += "\t\turl: '" + url + "',\n";
						str += "\t\targs: '" + params + "',\n";
						str += "\t\tresponse: " + body + "\n";
						str += "\t},\n";
						str += "\n";
						fs.appendFile(postFile, str);
					} else {
						console.log("Request not handled");
						console.log("Request method: " + method);
						console.log("URL: " + url);
					}
				});
			}
		}
		res.end();
	});
});
fs.writeFile(getFile, "", function () {
	fs.writeFile(postFile, "", function () {
		server.listen(5050);
		console.log("listening on port 5050");
	});
});
