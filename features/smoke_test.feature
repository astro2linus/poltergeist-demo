@smoke
Feature: Smoke Test for Xero
	Scenario: User login
		Given I am a xero user
		Given I am on "Login" page
		When I login
		Then I should see the text "Watch the getting started video"