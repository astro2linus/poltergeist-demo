require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'xeroizer'
require_relative 'pages'
require_relative 'helper'
include Capybara::DSL
include XeroHelpers

# Specify driver (:poltergest, :selenium) and env ("dev", "qa", "live") 

DRIVER = :selenium
$env = "live"


$config = Hash[load_yamls]
$host = $config["hosts"][$env.downcase]

case DRIVER
when :poltergeist
	Capybara.register_driver :poltergeist do |app|
	  Capybara::Poltergeist::Driver.new(app, phantomjs_options: ['--debug=no', '--ignore-ssl-errors=yes', '--ssl-protocol=TLSv1'])
	end

	Capybara.configure do |c|
		c.run_server = false
		c.javascript_driver = :poltergeist
	  c.default_driver = :poltergeist
	  c.app_host = $host
	end
when :selenium
	Capybara.configure do |c|
	  c.default_driver = :selenium
	  c.app_host = $host
	end
end

# Send Xero APIs using Xeroizer

CONSUMER_KEY = "MMTKYLUKN9XAOTAASYR8IFUBZCUTM9"
CONSUMER_SECRET = "SBARJP3REIZAV20JKJVTOFR5CMXTLZ"

$client = Xeroizer::PrivateApplication.new(CONSUMER_KEY, CONSUMER_SECRET, "features/fixtures/privatekey.pem")


