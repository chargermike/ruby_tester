require "rubygems"
require "rspec"
require "selenium-webdriver"
require_relative "page_objects/facebook_home_page"


describe "facebook login" do

 	before(:each) do
	    @driver = Selenium::WebDriver.for :firefox
	    @driver.manage.timeouts.implicit_wait = 3 # seconds
	    @driver.navigate.to "https://www.facebook.com/"
	end
 	after(:each) do
	    @driver.close	   
	end

  	it "should login successfuly" do
	    
	    # page object
		facebook_home = FacebookHomePage.new @driver
		facebook_home.login "herringshawmichaelulhs@gmail.com", "11452009"
	 
	end


	it "should fail with message" do
	 
	    # page object
		facebook_home = FacebookHomePage.new @driver
		facebook_home.login "herringshawmichaelulhs@gmail.com", "invalid"   

		# error message
		@driver.find_element(:class, 'fsl').text.include? "Incorrect Email/Password Combination"
		
	end

end

# get array
#a = @driver.find_elements(:xpath, "//div[@role='article']")

# trying to filter them down
#fa = a.select do |e|
# 	e.find_elements(:class, "passiveName").count == 1
#end

# loop filtered array
#fa.each { |e| puts e.find_element(:class, 'passiveName').text }
