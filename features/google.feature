
Feature: Google Search
  Scenario: Basic Search
    Given I go to "https://google.com"
    Then I click on the "search" element
    Then I type "cucumberjs" in the "search" element
    Then I press ENTER
    Then the url should contain "https://www.google.com/search?"
    Then I should see the "first result" element containing the text "cucumber/cucumber-js: Cucumber for JavaScript - GitHub"
  