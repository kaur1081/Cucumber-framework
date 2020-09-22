Feature: Test steps for old login scenario

  Scenario: old login test for SA2 Robert
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
    Then I click on the "name option" element containing the text "SA2 Robert"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/surgery/list"

  Scenario: old login test for SA Benny
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
    Then I click on the "name option" element containing the text "SA Benny"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/dashboard"

  Scenario: old login test for CTA4 Lina Amini, MD
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
    Then I click on the "name option" element containing the text "CTA4 Lina Amini, MD"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for Physician 1 Surgeon
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
    Then I click on the "name option" element containing the text "Physician 1 Surgeon"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/oldlogin"

  Scenario: old login test for CTA5 Tommy Korn, MD
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
    Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTA5 Tommy Korn, MD"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"


  Scenario: old login test for CTA3 Gayle Howard, MD
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
     Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTA3 Gayle Howard, MD"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTM4 Mizelle H
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
   Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTM4 Mizelle H"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTA1 Bishoy Said, MD
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
     Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTA1 Bishoy Said, MD"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTA2 Eric Linebarger, MD
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
   Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTA2 Eric Linebarger, MD"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTM5 Janet H
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
    Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTM5 Janet H"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTM3 Natasha S
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
    Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTM3 Natasha S"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTM9 Shawna E
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
  Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTM9 Shawna E"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTM1 Brenda L
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
   Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTM1 Brenda L"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTM2 Angela C
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
    Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTM2 Angela C"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTM8 Michael C
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
   Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTM8 Michael C"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTM6 Craig M
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
  Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTM6 Craig M"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list"

  Scenario: old login test for CTM7 Cristina H
    Given I go to "http://localhost:4200/"
    Then the url should be on "http://localhost:4200/#/oldlogin"
    Then I click on the "select user dropdown" element
    Then I scroll the "scroll view" element to 1
    Then I click on the "name option" element containing the text "CTM7 Cristina H"
    Then I click on the "login button" element
    Then the url should be on "http://localhost:4200/#/care-team/list" 





