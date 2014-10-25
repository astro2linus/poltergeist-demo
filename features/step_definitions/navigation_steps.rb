Given(/^I (am on|visit) "(.*?)" page$/) do |action,page_name|
	case page_name.downcase
	when "login"
		visit '/'
		# save_and_open_page
	when "sales"
		visit '/Accounts/Receivable/Dashboard/'
	end
end

When(/^I click on "(.*?)" link$/) do |text|
  click_on text
end