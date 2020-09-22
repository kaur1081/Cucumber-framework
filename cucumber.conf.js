const {
  setDefaultTimeout, AfterAll, BeforeAll,
} = require('cucumber');
const {
  createSession, closeSession, startWebDriver, stopWebDriver,
} = require('nightwatch-api');
require('./step-definitions');

const fs = require('fs');
const reporter = require('cucumber-html-reporter');

const reportDir = './report';

if (!fs.existsSync(reportDir)) {
  fs.mkdirSync(reportDir);
}
const jsonDir = './report/json';
if (!fs.existsSync(jsonDir)) {
  fs.mkdirSync(jsonDir);
}

const report = () => {
  reporter.generate({
    theme: 'bootstrap',
    jsonFile: 'report/cucumber_report.json',
    output: 'report/cucumber_report.html',
    reportSuiteAsScenarios: true,
    launchReport: false,
  }, () => {
    fs.copyFileSync('report/cucumber_report.json', `report/json/${Date.now()}.json`);
  });
};

setDefaultTimeout(60000);

BeforeAll(async () => {
  await startWebDriver();
  await createSession();
});

AfterAll(async () => {
  await closeSession();
  await stopWebDriver();
  setTimeout(report, 1000);
});
