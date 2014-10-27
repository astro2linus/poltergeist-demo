@new_repeating_invoice
Feature: Repeating Invoice
	Scenario: Create a new repeating invoice and save as draft
		Given I am a xero user
		And I am on "Login" page
		And I login
		And I visit "Sales" page
		And I click on "Repeating" link
		And I click on "New Repeating Invoice" button
		And I create a new repeating invoice and save as draft

		When I open the draft invoice that was just created
		And I take a screenshot "draft-repeating-invoice"
		And I choose "Approve for Sending" radio
		And I save the invoice email and close the popup winodw
		And I save the invoice
		Then the invoice should be approved and sent
		And I take a screenshot "approved-and-sent"
		And I logout