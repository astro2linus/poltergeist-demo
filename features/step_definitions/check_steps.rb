Then(/^I should see "(.*?)"$/) do |text|
	should have_text text
end

Then(/^I take a screenshot "(.*?)"$/) do |text|
  take_screenshot(text)
end