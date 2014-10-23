require 'yaml'

module XeroHelpers
	# load all yaml files in fixtures folder
	def load_yamls
	  fixtures_folder = File.expand_path("../fixtures", File.dirname(__FILE__))
	  Dir[File.join(fixtures_folder, '*.yml')].map {|f| [File.basename(f, '.yml').to_s, YAML.load_file(f)]}
	end
end
