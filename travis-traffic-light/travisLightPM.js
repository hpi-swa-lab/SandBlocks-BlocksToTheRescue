'use strict';
const util = require('util');
const request = require('request-promise-native');
const exec = util.promisify(require('child_process').exec);

// --- CONFIG -------------------
// WINDOWS driver config:
const program = "pm.exe";
const state = {
	off: "-off",
	on: "-on"
};
const deviceName = "-SIS-PM";
const socket = {
	red: "-LIGHT_RED",
	green: "-LIGHT_GREEN"
};

const travisCheckInterval = {
	normal: 60000,
	working: 20000,
	error: 30000,
};

const travisComToken = "zlpALAfncVzV00Fv4pDTSg";
const organisationName = "hpi-swa-lab";
const repoName = "BP2018RH1-tools";
const branch = "master";
// --- CONFIG END ---------------
exec(program); // start driver

const travisRepo = `${organisationName}%2F${repoName}`;
const travisBuildsURL = `https://api.travis-ci.com/repo/${travisRepo}/builds`;
const urlGet = url => request.get({
	url: url,
	json: true,
	headers: {
		"User-Agent": "TravisBuildCheckerJS",
		"Travis-API-Version": 3,
		"Authorization": `token ${travisComToken}`
	}
});

async function setState(socket, state) {
	const cmd = [program, state, deviceName, socket].join(' ');
	const { stdout, stderr } = await exec(cmd);
	if (stdout.trim()) {
		console.error(`Unexpected return of "${cmd}": ${stdout}`);
	}
	if (stderr.trim()) {
		console.error(`Error executing "${cmd}": ${stderr}`);
	}
}

var travisChecker;
var lightBlinker;
const clearLight = () => {
	if (lightBlinker) clearTimeout(lightBlinker);
	setState(socket.green, state.off);
	setState(socket.red, state.off);
};
const redOn = () => {
	setState(socket.red, state.on);
};
const greenOn = () => {
	setState(socket.green, state.on);
};
const blinkLightOff = () => {
	lightBlinker = setTimeout(() => {
		clearLight();
		blinkLightOn();
	}, 1000);
}, blinkLightOn = () => {
	lightBlinker = setTimeout(() => {
		redOn();
		greenOn();
		blinkLightOff();
	}, 1000);
};

process.on('exit', () => {
	clearLight();
	clearInterval(travisChecker);
});

const buildStateOutput = {
	failed: () => {
		clearLight();
		redOn();
	},
	passed: () => {
		clearLight();
		greenOn();
	},
	working: () => {
		clearLight();
		redOn();
		greenOn();
	},
	error: () => {
		clearLight();
		blinkLightOff();
	}
};

const checkBuildStatus = () => {
	urlGet(`${travisBuildsURL}?limit=1`).then(builds => {
		const latestBuild = builds.builds[0];
		const { state, commit } = latestBuild;
		const author = latestBuild.created_by.login;
		const commitString = `#${commit.sha.substr(0, 6)}: ${author} "${commit.message}"`;
		const time = (new Date()).toLocaleString();
		console.log(time, `[${state}]`, commitString);
		switch (state) {
			case "passed":
				buildStateOutput.passed();
				return travisCheckInterval.normal;
			case "failed":
				buildStateOutput.failed();
				return travisCheckInterval.normal;
			default:
				buildStateOutput.working();
				return travisCheckInterval.working;
		}
	}).catch(error => {
		const { response } = error;
		buildStateOutput.error();
		if (!response) throw error;
		console.error(`Travis returned: ${response.statusCode} ${response.statusMessage}`);
		return travisCheckInterval.error;
	}).catch(error => {
		console.error(error);
		return travisCheckInterval.error;
	}).then(nextInterval => {
		travisChecker = setTimeout(checkBuildStatus, nextInterval);
	});
};
travisChecker = setTimeout(checkBuildStatus, 0);