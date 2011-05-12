Given /^an url "([^"]*)"$/ do |url|
    Capybara.app_host = url
  #  visit "/"
 #   save_and_open_page
#    puts response.body.inspect
end


When /^user visit "([^"]*)"$/ do |url|
  visit url
end

Then /^user should see the Blog sidebar model$/ do
  page.should have_xpath("//div/h3/a[contains(text(),'Recent Blog Entries')]")
end

Then /^user should see "([^"]*)" label adjudicate to the number of comments$/ do |label|
#get matching xpath as array
  page.all(:xpath, "//div[@id='fw-sidebar']/div[8]/div[@class='fw-text']/div/div[2]").each do |eachpath|
    eachpath.text.should include(label)
  end
end

