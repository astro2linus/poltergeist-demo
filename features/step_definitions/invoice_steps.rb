When(/^I create a new repeating invoice and save as draft$/) do
  invoice_page.new_repeating_invoice
end

When(/^I open the draft invoice that was just created$/) do
  find('td', text: invoice_page.reference).click
end

When(/^I save the invoice$/) do
  invoice_page.save
end

When(/^I save the invoice email and close the popup winodw$/) do
  invoice_page.save_on_popup_window
end

Then(/^the invoice should be approved and sent$/) do
  status = find(:xpath, "//td[contains(text(),'#{invoice_page.reference}')]/following-sibling::td[6]").text
  expect(status) == "Approved & Sent"
end