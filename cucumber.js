module.exports = {
	"chrome-phone": "--tags @phone --world-parameters " + JSON.stringify({ platform: "chrome-phone", width: 520, height: 920 }),
	"chrome-desktop": "--tags @desktop --world-parameters " + JSON.stringify({ platform: "chrome-desktop", width: 1800, height: 1180 }),
	"chrome-tablet": "--tags @tablet --world-parameters " + JSON.stringify({ platform: "chrome-tablet", width: 1050, height: 850 }),
	"firefox-desktop": "--tags @desktop --world-parameters " + JSON.stringify({ platform: "firefox-desktop", width: 1800, height: 1180 }),
	"ie-desktop": "--tags @desktop --world-parameters " + JSON.stringify({ platform: "ie-desktop", width: 1800, height: 1180 })
};
