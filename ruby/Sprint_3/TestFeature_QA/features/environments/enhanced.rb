#require 'capybara/celerity'
Capybara.run_server = false
#Capybara.app_host = "http://www.webs.com"
Capybara.default_driver = :selenium
Capybara.default_selector = :xpath




# (e.g. rescue_action_in_public / rescue_responses / rescue_from)