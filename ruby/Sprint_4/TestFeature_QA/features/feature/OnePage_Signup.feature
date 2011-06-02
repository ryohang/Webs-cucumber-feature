Feature: FWB-13190 One page signup flow

@selenium
Scenario: Verify the new one page signup flow from no email info "Get started" from webs.com main page
    Given an url "http://qa.members.webs.com"
    And I should see no email info signup page otherwise try 10 times
    And I click on the green Get Started button
    And I should see three steps signup flow otherwise try 10 times to see "Set up your account"
    When I saw one page signup flow with three steps "Set up your account","Select a Template","Choose Pages For Your Site"
    Then I fill up Email as "ryotestnewsignup@gmail.com" Password as "automationtest" Site Address as "testman" with randow number and Site title
    And I select a template
    And I choose pages for my site
    When I click on "Create My Website"
    And I should see Co-Reg page
    And I click "No,thanks"
    Then I should be taken to Site Builder