Feature:PRM-1060 Can't Link to Items on Premium (Session Replication Issue btwn Webs & Premium)


    
@selenium
Scenario Outline: User click on the sku link should redirect to the shopping cart after login as sitename
     Given an url <skuurl>
     When user click on "Sign In" to pop up username and password input box
     Then user supply user <user> and "automationtest"
     And user click on "Sign In" button
     Then user should be redirected to "https://premium.members.webs.com/premium/checkout/oneStepCheckout"
     


Examples:
    |skuurl|                                                                                      |user|
    |"https://premium.members.webs.com/premium/checkout?bundle.0.bundleSKU=PRO_TWO_YEAR"|         |"prm-1060autotest"|
    |"https://premium.members.webs.com/premium/checkout?bundle.0.bundleSKU=PRO_ONE_DAY_SALE_50"|  |"prm-1060autotest"|
    


@selenium
Scenario Outline: User click on the sku link should redirect to the shopping cart after login as websid
     Given an url <Skuurl>
     When user click on "Sign In" to pop up username and password input box
     Then user supply user <websid> and "automationtest"
     And user click on "Sign In" button
     Then user will be prompted dropdown list "SELECT A SITE"
     When user select "prm-1060autotest" site
     Then user should be redirected to "https://premium.members.webs.com/premium/checkout/oneStepCheckout"
     

Examples:
    |Skuurl|                                                                                      |websid|
    |"https://premium.members.webs.com/premium/checkout?bundle.0.bundleSKU=PRO_TWO_YEAR"|         |"ryotestwebs@yahoo.com"|
    |"https://premium.members.webs.com/premium/checkout?bundle.0.bundleSKU=PRO_ONE_DAY_SALE_50"|  |"ryotestwebs@yahoo.com"|
    

@selenium
Scenario Outline: User click on the sku link should redirect to the shopping cart if user already logged in as siteuser
     Given an url "http://www.webs.com"
     When user click on "Sign In" to pop up username and password input box
     Then user supply user <user> and "automationtest"
     And user click on "Sign In" button
     When user click on offer link <skuurl>
     Then user should be redirected to "https://premium.members.webs.com/premium/checkout/oneStepCheckout"
     


Examples:
    |skuurl|                                                                                      |user|
    |"https://premium.members.webs.com/premium/checkout?bundle.0.bundleSKU=PRO_TWO_YEAR"|         |"prm-1060autotest"|
    |"https://premium.members.webs.com/premium/checkout?bundle.0.bundleSKU=PRO_ONE_DAY_SALE_50"|  |"prm-1060autotest"|