class Sitebuilder
  include CommonPageOperation
  def assertpagetitle(titlestring)
    @session.find("//a[contains(text(),'Site Builder')]").text.should eql titlestring
  end
end