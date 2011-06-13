#require 'capybara/celerity'
Capybara.run_server = false
#Capybara.app_host = "http://www.webs.com"
Capybara.default_driver = :selenium
Capybara.default_selector = :xpath

include RSpec::Matchers

#loading webs page pattern from websautotest gem
include Websautotest::Pagepattern
# (e.g. rescue_action_in_public / rescue_responses / rescue_from)