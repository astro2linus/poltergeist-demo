require 'yaml'

module XeroHelpers
	# load all yaml files in fixtures folder
	def load_yamls
	  fixtures_folder = File.expand_path("../fixtures", File.dirname(__FILE__))
	  Dir[File.join(fixtures_folder, '*.yml')].map {|f| [File.basename(f, '.yml').to_s, YAML.load_file(f)]}
	end

	def take_screenshot(name="screenshot")
		#path = File.expand_path("../../screenshots/#{name.downcase}.png", __FILE__)
		#{}%x[touch(path)]
		#save_screenshot(path)
		sleep 0.5
		save_screenshot("screenshots/#{name.downcase}.png")
		embed("screenshots/#{name.downcase}.png", "image/png", "SCREENSHOT")
		sleep 0.5
end
end
