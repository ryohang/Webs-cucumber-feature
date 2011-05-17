Feature: FormResponse_EmptyDropdown

Scenario: QA_FormResponse action drop down value is not empty
    Given an url "http://qa.members.webs.com"
    When user click on "Sign In" to pop up username and password input box
    Then user supply user "ryotestbug" and "automationtest"
    And user click on "Sign In" button
    When user visit "/s/community/messages"
    Then user should see value in "Actions:" dropdown list
    

Scenario: Live_FormResponse action drop down value is not empty
    Given an url "http://members.webs.com"
    When user click on "Sign In" to pop up username and password input box
    Then user supply user "ryotestbug" and "automationtest"
    And user click on "Sign In" button
    When user visit "/s/community/messages"
    Then user should see value in "Actions:" dropdown list
    