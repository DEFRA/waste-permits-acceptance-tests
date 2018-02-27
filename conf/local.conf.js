exports.config = {
    user: 'amrutabendre1',
    key: 'KDzfKFDVgAevzBNe5ymM',
    server: 'hub-cloud.browserstack.com',
  
    capabilities: [{
      browserName: 'chrome',
      name: "local_test",
      build: "cucumber-js-browserstack",
      'browserstack.local': true
    }]
  }