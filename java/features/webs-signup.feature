Feature: User will attempt to signup websid with his email
         Attempt to create a new account without entering any information 
         Attempt to create a new account when only entering an Email Address
         Test entering in an email address that has an invalid domain
         Test entering in a password that is longer than 256 characters
         Test entering in a valid email address and a valid password.
                 
Scenario: This test case will attempt to create a new account without entering any information
	Given an url "http://www.webs.com"
	Then the following fields should appear on the home page "Email Address","Password",option "Site Type"
	When I click on the green Get Started button
	Then I should remain on the home page 
	And a red X should appear on the right side of the Email field

Scenario: This test case will attempt to create a new account when only entering an Email Address
	Given an url "http://www.webs.com"
	Then the following fields should appear on the home page "Email Address","Password",option "Site Type"
	When I enter in an "local"
	Then I should remain on the home page 
	And a red X should appear on the right side of the Email field
	When I enter in an "local@example.com"
	Then I should remain on the home page 
	And a ticker should appear on the right side of the Email field
	
Scenario: Test entering in an email address that has an invalid doman
	Given an url "http://www.webs.com"
	Then the following fields should appear on the home page "Email Address","Password",option "Site Type"
	When I enter in an "test@example.asdf"
	And I enter password "test1234"
	When I click on the green Get Started button
	Then I should be taken back to the home page
	And the fields should be blank