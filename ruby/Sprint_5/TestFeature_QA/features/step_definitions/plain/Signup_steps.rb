
Given /^an url "([^"]*)"$/ do |url|
    Capybara.app_host = url
    visit "/"
 #   save_and_open_page
#    puts response.body.inspect
end


And /^I should see no email info signup page otherwise try (\d+) times$/ do |times|
  @Portalpage=Portal.new(Capybara.current_session)
  @Portalpage.noinfosignup(times)
end

And /^I should see email page otherwise try (\d+) times$/ do |times|
  @Portalpage=Portal.new(Capybara.current_session)
  @Portalpage.emailsignup(times)
end

And /^I fill up Email as "([^"]*)" Gmail Password as "([^"]*)" with randow number$/ do |email, password|
  @email=email+rand(100).to_s+"@gmail.com".to_s
  @password=password
  @Portalpage.fill_email(@email)
  @Portalpage.fill_password(@password)
end

And /^I select website category to "([^"]*)"$/ do |type|
  @Portalpage.select_webstype(type)
  @type=type
end


And /^I click on the green Get Started button$/ do
  @Signup=@Portalpage.clickstarted_goto_signup
end


And /^I should see three steps signup flow otherwise try (\d+) times to see "([^"]*)"$/ do |times,step1text|
  @Signup.assertnewpage(times,step1text)
end

And /^I should see three steps signup flow with login id otherwise try (\d+) times to see "([^"]*)"$/ do |times,step1text|
  @Signup.assertnewsignup_fromemailsignup(times,step1text,@email,@password,@type)
end


When /^I saw one page signup flow with three steps "([^"]*)","([^"]*)","([^"]*)"$/ do |step1text, step2text, step3text|
  #@Signup=Signup.new(Capybara.current_session)
  @Signup.assertthreestep(step1text,step2text,step3text)
end

And /^I should see the category to "([^"]*)"$/ do |type|
  @Signup.assert_categorytype(type)
end



Then /^I fill up Email as "([^"]*)" Gmail Password as "([^"]*)" Site Address as "([^"]*)" with randow number and Site title$/ do |email, password, sitename|
  @Signup.fill_signupemail(email+rand(100).to_s+"@gmail.com".to_s)
  @Signup.fill_signuppassword(password)
  @Signup.fill_SiteAddressAndTitle(sitename+rand(100).to_s+rand(100).to_s+rand(100).to_s)
end



Then /^I fill up Site Address as "([^"]*)" with randow number and Site title$/ do |sitename|
  @Signup.fill_SiteAddressAndTitle(sitename+rand(100).to_s+rand(100).to_s+rand(100).to_s)
end


Then /^I select a template$/ do
  @Signup.select_template
end

Then /^I choose pages for my site$/ do
  @Signup.select_pages
end

When /^I click on Create My Website$/ do
 @Coreg=@Signup.clickregister_goto_coreg
end

When /^I should see Co\-Reg page with "([^"]*)" "([^"]*)" package$/ do |enhance,pro|
  @Coreg.assertpackageindex(enhance,pro)
end

When /^I click "([^"]*)"$/ do |nothankstring|
  @Sitebuilder=@Coreg.clicknothanks_goto_sitebuilder(nothankstring)
end

Then /^I should be taken to "([^"]*)"$/ do |sitebuildertitle|
  @Sitebuilder.assertpagetitle(sitebuildertitle)
end




