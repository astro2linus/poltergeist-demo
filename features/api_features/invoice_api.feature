@invoice_api
Feature: Invoice API Test via xeroizer
	Scenario: get - fetch invoices by invoice number
		Given the invoices for test exist in the system
		When I 'get' the invoice "invoice_number" = "INV-0004"
		Then "invoice_id" of the invoice should equal "4c348d05-b568-439e-af29-06ba8a2645b7"
		And "sub_total" of the invoice should equal "100.0"
		And "amount_due" of the invoice should equal "115.0"