// const { expect } = require('chai');
// const { Given, Then, When } = require('cucumber');
// const { client } = require('nightwatch-api');
// const selectors = require('../assets/dom-selectors.json');

// //  Scenario: Login on the browser

// Given('I go to {string}', async (url) => {
//   // console.log('In Given case');
//   await client.url(url);
// });

// Then('the url should be on {string}', async (url) => {
//   // console.log('url = ', url);
//   client.url(() => {
//     client.assert.urlEquals(url);
//     console.log('result url = ', url);
//   });
// });

// Then('I should see the {string} element', async (element) => {
//   console.log('login btn element = ', element);
//   // client.assert.visible({ selector: '[element].should_be_visible' });
//   client.waitForElementVisible(selectors[element]);
// });
//   console.log('click element = ', element);

// When('I click on the {string} element', async (element) => {
//   // client.waitForElementVisible(selectors[element]);
//   client.click(selectors[element]);
//   console.log('after click = ', element);

//   // client.end();
// });