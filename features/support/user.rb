class User
	attr_reader :email, :password

	def initialize(args)
		@email = args[:email]
		@password = args[:password]
	end
end