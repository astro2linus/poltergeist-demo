Then(/^I should see the text "(.*?)"$/) do |text|
	should have_text text
end