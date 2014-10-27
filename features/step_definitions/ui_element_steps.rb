When(/^I click on "(.*?)" (link|button)$/) do |text, ui_element|
  click_on text
end

When(/^I choose "(.*?)" radio$/) do |text|
  choose text
end