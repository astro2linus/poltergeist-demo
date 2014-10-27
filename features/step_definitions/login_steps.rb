When(/^I login$/) do
  login_page.login(@user.email, @user.password)
end

Then(/^I logout$/) do
  login_page.logout
end