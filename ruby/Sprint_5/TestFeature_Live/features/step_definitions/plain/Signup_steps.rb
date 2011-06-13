
Given /^an url "([^"]*)"$/ do |url|
    Capybara.app_host = url
    visit "/"
    @Portalpage=Portal.new(Capybara.current_session)
 #   save_and_open_page
#    puts response.body.inspect
end


Then /^user supply user "([^"]*)" and "([^"]*)"$/ do |username, password|
  @Portalpage.fill_logincred(username,password)

end

Then /^user click on "([^"]*)" to pop up username and password input box/ do |arg1|
  @Portalpage.fill_logincred
end

Then /^user click on "([^"]*)" button$/ do |arg1|
  @Portalpage.clicksignin_goto_dashboard
end






