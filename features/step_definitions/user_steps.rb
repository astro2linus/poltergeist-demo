Given(/^I am a xero user$/) do
	sample_user = $config["login_accounts"]["live"].to_a.sample
	@user = User.new email: sample_user[0].to_s, password: sample_user[1].to_s
	puts "User < #{@user.email} > is trying to login with password < #{@user.password} >"
end