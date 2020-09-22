const { Given, Then } = require('cucumber');
const { client } = require('nightwatch-api');
const xpaths = require('../assets/xpath.json');

Given('I go to {string}', async (url) => {
  await client.url(url);
});

Then('the url should be on {string}', async (url) => {
  await client.assert.urlEquals(url);
});

Then('the url should contain {string}', async (url) => {
  await client.assert.urlContains(url);
});

Then('I should see the {string} element', async (element) => {
  if (!xpaths[element]) {
    throw new Error('xpath not defined');
  }
  await client.useXpath().waitForElementVisible(xpaths[element]);
});

Then('I click on the {string} element', async (element) => {
  const elem = xpaths[element];
  if (!elem) {
    throw new Error('xpath not defined');
  }
  await client.useXpath()
    .waitForElementVisible(elem)
    .click(elem);
});

Then('I should see the {string} element containing the text {string}', async (element, name) => {
  if (!xpaths[element]) {
    throw new Error('xpath not defined');
  }
  const xpathElement = `${xpaths[element]}[text()="${name}"]`;
  await client.useXpath().waitForElementVisible(xpathElement);
});

Then('I click on the {string} element containing the text {string}', async (element, name) => {
  if (!xpaths[element]) {
    throw new Error('xpath not defined');
  }
  const xpathElement = `${xpaths[element]}[text()="${name}"]`;
  await client.useXpath()
    .waitForElementVisible(xpathElement)
    .click(xpathElement);
});

Then('I type {string} in the {string} element', async (type, element) => {
  if (!xpaths[element]) {
    throw new Error('xpath not defined');
  }
  await client.useXpath().setValue(xpaths[element], type);
});

Then('I press ENTER', async () => {
  await client.keys(client.Keys.ENTER);
});

Then('I scroll the {string} element to {int}', async (element, offset) => {
  const elem = xpaths[element];
  if (!elem) {
    throw new Error('xpath not defined');
  }
  await client.execute(
    // must be a named function! Arrow functions not allowed
    // eslint-disable-next-line prefer-arrow-callback
    function browserExecute(xpath, position) {
      // eslint-disable-next-line no-undef
      const el = document.evaluate(
        xpath,
        // eslint-disable-next-line no-undef
        document,
        null,
        // eslint-disable-next-line no-undef
        XPathResult.FIRST_ORDERED_NODE_TYPE,
        null,
      ).singleNodeValue;
      el.scrollTop = position;
      return [xpath, el];
    }, [elem, offset], (result) => {
      console.log(result);
    },
  );
});
