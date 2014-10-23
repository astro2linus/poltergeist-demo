class LoginPage
	def login(email, password)
		fill_in "email", with: email
		fill_in "password", with: password
		click_on "Login"
	end
end