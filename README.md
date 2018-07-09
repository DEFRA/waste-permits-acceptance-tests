# Waste Permits Service Acceptance Tests

[![Build Status](https://travis-ci.org/DEFRA/waste-permits.svg?branch=master)](https://travis-ci.org/DEFRA/waste-permits)
[![NSP Status](https://nodesecurity.io/orgs/cruikshanks/projects/fb915ae3-9c10-485d-bfc8-38c5c53316cc/badge)](https://nodesecurity.io/orgs/cruikshanks/projects/fb915ae3-9c10-485d-bfc8-38c5c53316cc)
[![Known Vulnerabilities](https://snyk.io/test/github/defra/waste-permits/badge.svg)](https://snyk.io/test/github/defra/waste-permits)
[![Dependency Status](https://dependencyci.com/github/DEFRA/waste-permits/badge)](https://dependencyci.com/github/DEFRA/waste-permits)
[![Greenkeeper badge](https://badges.greenkeeper.io/DEFRA/waste-permits.svg)](https://greenkeeper.io/)

You may need to apply to the [Environment Agency](https://www.gov.uk/government/organisations/environment-agency) for an environmental permit if your business uses, recycles, treats, stores or disposes of waste or mining waste. This permit can be for activities at one site or for mobile plant that can be used at many sites.

The Waste Permits service will be a new, online way to apply for a waste permit.

This service is currently beta and has been developed in accordance with the [Digital by Default service standard](https://www.gov.uk/service-manual/digital-by-default), putting user needs first and delivered iteratively.

## Prerequisites

Please make sure the following are installed:

- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [Node.js v8.*](https://nodejs.org/en/)
- [Gulp](https://gulpjs.com/) using `npm install -g gulp`
- [StandardJS](https://standardjs.com/) using `npm install -g standard`
- [Chrome](https://www.google.com/chrome/index.html) our default `gulp` task assumes **Chrome** is installed

## Installation

Clone the repository and install its package dependencies:

```bash
git clone https://github.com/DEFRA/waste-permits-acceptance-tests.git && cd waste-permits-acceptance-tests
npm install
```

## Running the test locally (This runs FrontEnd and BackEnd functional acceptance tests)
# Run the tests on Chrome 
To Run on CHROME :- npm run test:chrome-desktop-test -- --https://<FRONTEND URL> --https://<BACKEND URL>

# Run the tests on Chrome- TABLET and PHONE EMULATORS
To Run on CHROME TABLET/PHONE EMULATORS :- npm run test:chrome-tablet-test -- --https://<FRONTEND URL> --https://<BACKEND URL>

#Run the tests on Firefox
To Run on FIREFOX :- npm run test:firefox-desktop-test -- --https://<FRONTEND URL> --https://<BACKEND URL>

#Run the tests on IE
To Run on IE :- npm run test:ie-desktop-test -- --https://<FRONTEND URL> --https://<BACKEND URL>

#Note you can change the url in the config.js and configCRM.js to point it to any headend

##Interceptions (WIP)
#You can mock GET/POST/... requests to fake the responses
#It runs the fake server on local
#On another terminal :- 
cd interceptionServer
node index.js


## Contributing to this project

If you have an idea you'd like to contribute please log an issue.

All contributions should be submitted via a pull request.

## License

THIS INFORMATION IS LICENSED UNDER THE CONDITIONS OF THE OPEN GOVERNMENT LICENCE found at:

<http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3>

The following attribution statement MUST be cited in your products and applications when using this information.

>Contains public sector information licensed under the Open Government license v3

### About the license

The Open Government Licence (OGL) was developed by the Controller of Her Majesty's Stationery Office (HMSO) to enable information providers in the public sector to license the use and re-use of their information under a common open licence.

It is designed to encourage use and re-use of information freely and flexibly, with only a few conditions.
