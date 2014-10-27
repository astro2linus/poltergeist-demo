Given(/^I (am on|visit|go to) "(.*?)" page$/) do |action,page_name|
	case page_name.downcase
	when "login"
		login_page.logout_if_necessary
		visit '/'
	when "sales"
		visit '/Accounts/Receivable/Dashboard/'
		sleep 2
	when "new repeating invoice"
		visit '/RepeatTransactions/Edit.aspx?type=AR'
	when "repeating invoices"
		visit 'AccountsReceivable/SearchRepeating.aspx'
	end
end