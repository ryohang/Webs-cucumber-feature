
Given /^an url "([^"]*)"$/ do |url|
    Capybara.app_host = url
    visit ""
    @Portalpage=Portal.new(Capybara.current_session)
 #   save_and_open_page
#    puts response.body.inspect
end


Then /^user supply user "([^"]*)" and "([^"]*)"$/ do |username, password|
  @Portalpage.fill_logincred(username,password)

end

Then /^user click on "([^"]*)" to pop up username and password input box/ do |arg1|
  @Portalpage.click_signinpopup
end

Then /^user click on "([^"]*)" button$/ do |arg1|
  @Dashboard=@Portalpage.clicksignin_goto_dashboard
  
end


Then /^user should be redirected to "([^"]*)"$/ do |url|
  @Portalpage.current_url.should eql(url)
end

Then /^user will be prompted dropdown list "([^"]*)"$/ do |iframename|
  @Dashboard.assertwebsover(iframename)
end


When /^user select "([^"]*)" site$/ do |sitename| 
  @Dashboard.selectsite_dropdown(sitename)
end

When /^user click on offer link "([^"]*)"$/ do |offerurl|
  @Dashboard.visit_redirect(offerurl)
end





