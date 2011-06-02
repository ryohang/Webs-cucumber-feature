class Portal
    include CommonPageOperation
    def noinfosignup(repeattimes)
        $i=0
        while $i<repeattimes.to_i do
            if @session.has_xpath?("//div[contains(@id,'get_started_block') and contains(@style,'display: block')]") then
            break
            end
            @session.reset!
            @session.visit "/"
            $i+=1;
        end
    end

    def clickstarted_goto_signup
        @session.find("//div[@id='get_started_block']/descendant::input[@id='signup_button']").click
        @Signup=Signup.new(@session)
    end
end