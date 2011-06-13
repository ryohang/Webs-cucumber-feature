Feature:PRM-1060 Can't Link to Items on Premium (Session Replication Issue btwn Webs & Premium)


    
@selenium
Scenario: User will get redirect to the shopping cart page if user click on the monthly and yearly unsigned link
     Given an url "http://qa.members.webs.com"
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
     When I click on Create My Website
     And I should see Co-Reg page with "ENHANCED" "PRO" package
     And I click "No Thanks, Continue"
     Then I should be taken to "Site Builder"
     


Examples:
    |webstype||webscategory|
    |"Please choose..."||"Small Business/Prof."|
    |" Business"||"Small Business/Prof."|
    |" Group/Organization"||"Groups/Orgs"|
    |" Personal"||"Personal"|