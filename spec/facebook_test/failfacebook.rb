require "rubygems"
require "rspec"
require "selenium-webdriver"

describe "search_google" do

 	before(:all) do
	    @driver = Selenium::WebDriver.for :firefox
	    @driver.manage.timeouts.implicit_wait = 3 # seconds
	
	 
	 end
  
  	it "should load google" do

	    @driver.navigate.to "https://www.facebook.com/"
	    

	    element = @driver.find_element(:id, 'email')
	    element.send_keys "herringshawmichaelulhs@gmail.com"
	   

		element = @driver.find_element(:id, 'pass')
	    element.send_keys "11450000"
	   

	    element = @driver.find_element(:id, 'u_0_b')
	    element.click


	end
end