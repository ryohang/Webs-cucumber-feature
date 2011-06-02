class Signup
  include CommonPageOperation
  def assertnewpage(times,step1text)
     $j=0
     $i=0
      while $i<times.to_i do
        if @session.find("//div[contains(@id,'step1')]/descendant::*/span[@class='signup_bulletitle']").text == (step1text) then
           #@session.find("//div[@id='standardAccountFieldsWrapper3']/descendant::*/span[@class='signup_bulletitle']").text should have("Select a Template")
           #@session.find("//div[@id='choose-pages']/descendant::*/span[@class='signup_bulletitle']").text should have("Choose Pages For Your Site")
          break
        end
           #TODO use portal method
          while $j<10 do

        #@Portalpage=Portal.new(@session)
        #@Portalpage.noinfosignup(10)
        #@Signup=@Portalpage.clickstarted_goto_signup
            if @session.has_xpath?("//div[contains(@id,'get_started_block') and contains(@style,'display: block')]") then
                @session.find("//div[@id='get_started_block']/descendant::input[@id='signup_button']").click
                break
              end
            Capybara.app_host = "http://qa.members.webs.com"
            @session.visit "/"
            @session.reset!
            $j+=1;
          end
          $i+=1;
         end 
  end
  
  def assertthreestep(step1text,step2text,step3text)
        @session.find("//div[contains(@id,'step1')]/descendant::*/span[@class='signup_bulletitle']").text.should eql (step1text) 
        @session.find("//div[@id='standardAccountFieldsWrapper3']/descendant::*/span[@class='signup_bulletitle']").text.should eql (step2text)
        @session.find("//div[@id='choose-pages']/descendant::*/span[@class='signup_bulletitle']").text.should eql (step3text)
  end  
  
  def fill_email(email)
        @session.fill_in "//div[contains(@class,'gwo_streamlined_signup') and contains(@style,'display: block')]/descendant::input[@id='email_address']", :with =>email       
  end
  
  def fill_password(password)
      @session.fill_in "//div[contains(@class,'gwo_streamlined_signup') and contains(@style,'display: block')]/descendant::input[@id='register_password']", :with => password  
  end
end