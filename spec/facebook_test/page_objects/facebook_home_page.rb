class FacebookHomePage
	
	def initialize(driver)
		@driver = driver
	end

	def login(email, password)
	   	element = @driver.find_element(:id, 'email')
	    element.send_keys email

		element = @driver.find_element(:id, 'pass')
	    element.send_keys password

	    element = @driver.find_element(:id, 'u_0_b')
	    element.click
	end
end