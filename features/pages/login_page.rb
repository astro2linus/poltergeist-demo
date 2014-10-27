class LoginPage
	def login(email, password)
		fill_in "email", with: email
		fill_in "password", with: password
		click_on "Login"
	end

	def logout
		# find("a.username").click
		# sleep 0.5
		# click_on "Logout"
		# sleep 2
		# click_on "Logout"
		visit '/Logout'
		sleep 2
	end

	def logout_if_necessary
		logout if has_text?("Demo NZ")
	end

end