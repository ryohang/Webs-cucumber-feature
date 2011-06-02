
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

And /^I click on the green Get Started button$/ do
  @Signup=@Portalpage.clickstarted_goto_signup
end


And /^I should see three steps signup flow otherwise try (\d+) times to see "([^"]*)"$/ do |times,step1text|
  @Signup.assertnewpage(times,step1text)
end

When /^I saw one page signup flow with three steps "([^"]*)","([^"]*)","([^"]*)"$/ do |step1text, step2text, step3text|
  #@Signup=Signup.new(Capybara.current_session)
  @Signup.assertthreestep(step1text,step2text,step3text)
end

Then /^I fill up Email as "([^"]*)" Password as "([^"]*)" Site Address as "([^"]*)" with randow number and Site title$/ do |email, password, arg3|
  @Signup.fill_email(email+rand(100))
  @Signup.fill_password(password)
end
