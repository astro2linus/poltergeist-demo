@smoke_test
Feature: Smoke Test for Xero
	Scenario: User login
		Given I am a xero user
		And I am on "Login" page
		When I login
		And I visit "Sales" page
		And I click on "Repeating" link
		Then I should see "New Repeating Invoice"
		And I take a screenshot "invoice-repeating"
		And I logout