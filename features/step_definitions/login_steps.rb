When(/^I login$/) do
  login_page.login(@user.email, @user.password)
end