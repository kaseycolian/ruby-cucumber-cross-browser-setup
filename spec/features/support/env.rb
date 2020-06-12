require 'rubygems'
require 'multi_json'
require 'pry'
require 'cucumber'
require 'rspec'
require 'cucumber/glue/dsl'



# Capybara.app = Application

# Before() do
#   Capybara.default_driver = :selenium
# end

# Before('chrome_local') do
#   # Capybara.current_driver = :selenium_chrome
#   # Capybara.run_server = false
#   puts  "7"
#   setup('chrome_local')
# end


def teardown
  @driver.quit
end