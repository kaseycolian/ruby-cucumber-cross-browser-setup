require_relative '../support/spec_helper'

Given(/^the (.*) has been setup$/) do |driver|
  # @driver = Driver.instance
  # @driver = Driver.new(driver)

  @driver = Driver.driver_setup(driver)
end