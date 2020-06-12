require_relative '../support/spec_helper'

Given(/^The user visits google$/) do
  # @driver = Driver.get_driver
  # puts @driver.singleton_methods
  # @driver
  # # @driver.navigate.to("https://www.google.com")
  # puts "777777"
  # @driver = BrowserActions.selenium
  # BrowserActions.selenium do |driver|
  #   driver.navigate.to("https://www.cnn.com")
  # end
  @driver.navigate.to("https://www.google.com")
end
