Then(/^I should see "(.*?)"$/) do |text|
	expect(page).to have_text text
end

Then(/^I take a screenshot "(.*?)"$/) do |text|
  take_screenshot(text)
end