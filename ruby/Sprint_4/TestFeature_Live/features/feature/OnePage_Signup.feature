Feature: FWB-13190 One page signup flow

#@selenium
#Scenario: Verify the new one page signup flow of no email info "Get started" from webs.com main page
#    Given an url "http://www.webs.com"
#    And I should see no email info signup page otherwise try 10 times
#    And I click on the green Get Started button
#    And I should see three steps signup flow otherwise try 10 times to see "Set up your account"
#    When I saw one page signup flow with three steps "Set up your account","Select a Template","Choose Pages For Your Site"
#    Then I fill up Email as "ryotestnewsignup" Gmail Password as "automationtest" Site Address as "automationtestman" with randow number and Site title
#    And I select a template
#    And I choose pages for my site
#    When I click on Create My Website
#    And I should see Co-Reg page with "ENHANCED" "PRO" package
#    And I click "No Thanks, Continue"
#    Then I should be taken to "Site Builder"

@selenium
Scenario: Verify the new one page signup flow from webs.com main page
     Given an url "http://www.webs.com"
     And I should see email page otherwise try 10 times
     And I fill up Email as "ryotestnewsignup" Gmail Password as "automationtest" with randow number
     And I select website category to " Business"
     And I click on the green Get Started button
     And I should see three steps signup flow with login id otherwise try 10 times to see "Set up your account"
     When I saw one page signup flow with three steps "Set up your account","Select a Template","Choose Pages For Your Site"
     And I should see the category to "Small Business/Prof."
     Then I fill up Site Address as "automationtestman" with randow number and Site title
     And I select a template
     And I choose pages for my site
     When I click on Create My Website
     And I should see Co-Reg page with "ENHANCED" "PRO" package
     And I click "No Thanks, Continue"
     Then I should be taken to "Site Builder"

    
@selenium
Scenario Outline: Verify the new one page signup flow from webs.com main page
     Given an url "http://www.webs.com"
     And I should see email page otherwise try 10 times
     And I fill up Email as "ryotestnewsignup" Gmail Password as "automationtest" with randow number
     And I select website category to <webstype>
     And I click on the green Get Started button
     And I should see three steps signup flow with login id otherwise try 10 times to see "Set up your account"
     When I saw one page signup flow with three steps "Set up your account","Select a Template","Choose Pages For Your Site"
     And I should see the category to <webscategory>
     Then I fill up Site Address as "automationtestman" with randow number and Site title
     And I select a template
     And I choose pages for my site
     


Examples:
    |webstype||webscategory|
    |"Please choose..."||"Small Business/Prof."|
    |" Group/Organization"||"Groups/Orgs"|
    |" Personal"||"Personal"|