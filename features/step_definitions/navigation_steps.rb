Given(/^I am on "(.*?)" page$/) do |page_name|
	case page_name.downcase
	when "login"
		visit '/'
		# save_and_open_page
	end
end