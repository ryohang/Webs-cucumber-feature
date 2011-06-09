Then /^user supply user "([^"]*)" and "([^"]*)"$/ do |username, password|
  page.within("//div[contains(@class,'clearfix sign_in_fields')]") do
    page.fill_in "FWloginUsername", :with => username
    page.evaluate_script("document.getElementById('FWloginPassword').focus()")
    page.fill_in "FWloginPassword2", :with=> password
  end
end

Then /^user click on "([^"]*)" to pop up username and password input box/ do |arg1|
  page.find("//a[@id='sign_in_nav']/span").click
end

Then /^user click on "([^"]*)" button$/ do |arg1|
  page.find("//form[@id='login_leaf']/div[@class='clearfix sign_in_fields']/descendant::input[@id='sign_in_leaf']").click
end

Then /^user should see value in "([^"]*)" dropdown list$/ do |actionlabel|
  page.should have_xpath("//select[@id='actionDropdown']")
  page.all(:xpath, "//select[@id='actionDropdown']/option").length == 7
  #puts page.find("//select[@id='actionDropdown']/option[1]").text.to_s
  page.find("//select[@id='actionDropdown']/option[1]").text.to_s.should include(actionlabel)
end
