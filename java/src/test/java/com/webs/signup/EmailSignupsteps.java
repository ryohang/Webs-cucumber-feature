package com.webs.signup;

import static com.thoughtworks.selenium.grid.tools.ThreadSafeSeleniumSessionStorage.session;
import static com.thoughtworks.selenium.grid.tools.ThreadSafeSeleniumSessionStorage.startSeleniumSession;

import static org.testng.Assert.*;
import cuke4duke.annotation.After;
import cuke4duke.annotation.Before;
import cuke4duke.annotation.I18n.EN.When;
import cuke4duke.annotation.I18n.EN.Given;
import cuke4duke.annotation.I18n.EN.Then;

public class EmailSignupsteps {
	public static String seleniumHost;
	public static int seleniumPort;
	public static String browser;
	public static String webSite;
	public String currenturl;
	
    @Before
    public void setUpClass() throws Exception {
    	seleniumHost="localhost";
    	seleniumPort=4444;
    	browser="*firefox";
    }

    @After
    public void tearDownClass() throws Exception {
    	session().stop();   	
    }
    
	@Given ("^an url \"([^\"]*)\"$")
	 public void openUrl(String url) {
		this.currenturl=url;
		int i = 0;
		while (i<6){
			++i;
			startSeleniumSession(seleniumHost,seleniumPort,browser,url);
			session().setTimeout("120000");
			session().open("/");
			session().waitForPageToLoad("30000");
			session().getEval("window.moveTo(-0,-1);");
			session().windowMaximize();
			if (session().isElementPresent("//div[contains(@class,'gwo_streamlined_signup with_type') and contains(@style,'display: block')]")){
				break;				
			}
			session().stop();
		}
		/*debug code
		startSeleniumSession(seleniumHost,seleniumPort,browser,url);
		session().setTimeout("120000");
		session().open("/");
		session().waitForPageToLoad("30000");
		session().getEval("window.moveTo(-0,-1);");
		session().windowMaximize();*/
	 }
	
	@Then ("^the following fields should appear on the home page \"([^\"]*)\",\"([^\"]*)\",option \"([^\"]*)\"$")
	 public void signupwithouttypehidden(String emaillable, String passlabel, String type) {
		assertEquals(emaillable,session().getText("ui=PortalPage::SignupEmailLabel()"));
		assertEquals(passlabel,session().getText("ui=PortalPage::SignupPasswordLabel()"));
		assertEquals(type,session().getText("ui=PortalPage::SignuptypeLabel()"));
	}

	@When("^I click on the green Get Started button$")
		public void ClickonGetStarted() {
		session().click("ui=PortalPage::streamlinegetStart()");
	}
	
	@Then("^I should remain on the home page$")
		public void TheHomePageGetStartedGreyout() {
		assertEquals(session().getLocation(),currenturl+"/");
		//assert style attribute of the get start button
		assertEquals("opacity: 0.5;",session().getAttribute("//div[contains(@class,'gwo_streamlined_signup') and contains(@style,'display: block')]/descendant::input[@id='streamlined_signup_button']@style"));
    }

	@Then ("^a red X should appear on the right side of the Email field$")
     public void AssertredcrossEmail() {
		//assert class attribute of email container
		assertEquals("text_container invalid",session().getAttribute("//div[contains(@class,'gwo_streamlined_signup') and contains(@style,'display: block')]/descendant::div@class"));
}


}
