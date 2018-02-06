module.exports = {
	"chrome-phone-test": "--tags @phone --world-parameters " + JSON.stringify({ platform: "chrome-phone-test", width: 520, height: 920 }),
	"chrome-phone-dev": "--tags @phone --world-parameters " + JSON.stringify({ platform: "chrome-phone-dev", width: 520, height: 920 }),
	"chrome-desktop-dev": "--tags @desktop --world-parameters " + JSON.stringify({ platform: "chrome-desktop-dev", width: 1800, height: 1180 }),
	"chrome-desktop-test": "--tags @desktop --world-parameters " + JSON.stringify({ platform: "chrome-desktop-test", width: 1800, height: 1180 }),
	"chrome-desktop-headless-test": "--tags @desktop --world-parameters " + JSON.stringify({ platform: "chrome-desktop-headless-test", width: 1800, height: 1180 }),
	"chrome-tablet-dev": "--tags @tablet --world-parameters " + JSON.stringify({ platform: "chrome-tablet-dev", width: 1050, height: 850 }),
	"chrome-tablet-test": "--tags @tablet --world-parameters " + JSON.stringify({ platform: "chrome-tablet-test", width: 1050, height: 850 }),
	"firefox-desktop-dev": "--tags @desktop --world-parameters " + JSON.stringify({ platform: "firefox-desktop-dev", width: 1800, height: 1180 }),
	"firefox-desktop-test": "--tags @desktop --world-parameters " + JSON.stringify({ platform: "firefox-desktop-test", width: 1800, height: 1180 }),
	"ie-desktop-dev": "--tags @desktop --world-parameters " + JSON.stringify({ platform: "ie-desktop-dev", width: 1800, height: 1180 }),
	"ie-desktop-test": "--tags @desktop --world-parameters " + JSON.stringify({ platform: "ie-desktop-test", width: 1800, height: 1180 })
};
