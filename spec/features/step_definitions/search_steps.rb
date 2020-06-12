require_relative '../support/spec_helper'

When (/^The user enters search term '(.*)'$/) do |term|
  # Capybara examples - needs implemented
  # search_box = find_element(xpath: "//input[@aria-label='Search']")
  # fill_in(search_box, :with => term)

  searchBox = @driver.find_element(:xpath, "//input[@aria-label='Search']")
  searchBox.send_keys(term)

  CustomDriver.wait_for(3) { @dropdown = @driver.find_element(:class, 'UUbT9').displayed? }

  if @dropdown
    searchBox.send_keys(:escape)
  end
end

When (/^The user clicks the '(.*)' button$/) do |button|
  searchButton = @driver.find_elements(:xpath, "//*[@class='gNO89b'][@aria-label = '#{button}']").last
  searchButton.click
end

Then (/^The user should be directed to the results page for '(.*)'$/) do |term|
  expect(@driver.current_url).to include(term)
end