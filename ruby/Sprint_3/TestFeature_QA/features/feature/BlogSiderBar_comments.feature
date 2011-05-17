Feature: Blog_SideBar

Scenario: QA_Blog Sidebar module show comments adjudicate to the number of comments
    Given an url "http://qa.members.webs.com"
    When user visit "/ryotestbug/apps/blog.qa/"
    Then user should see the Blog sidebar model
    And user should see "comment" label adjudicate to the number of comments

Scenario: Live_Blog Sidebar module show comments adjudicate to the number of comments
    Given an url "http://www.freewebs.com"
    When user visit "/ryotestbug/apps/blog/"
    Then user should see the Blog sidebar model
    And user should see "comment" label adjudicate to the number of comments