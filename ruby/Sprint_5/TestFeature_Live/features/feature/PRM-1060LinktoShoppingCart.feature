Feature:PRM-1060 Can't Link to Items on Premium (Session Replication Issue btwn Webs & Premium)


    
@selenium
Scenario: User click on the sku link should redirect to the shopping cart after login
     Given an url "https://premium.members.webs.com/premium/checkout?bundle.0.bundleSKU=PRO_TWO_YEAR"
     When user click on "Sign In" to pop up username and password input box
     Then user supply user "ryotestbug" and "automationtest"
     And user click on "Sign In" button
     


Examples:
    |webstype||webscategory|
    |"Please choose..."||"Small Business/Prof."|
    |" Business"||"Small Business/Prof."|
    |" Group/Organization"||"Groups/Orgs"|
    |" Personal"||"Personal"|