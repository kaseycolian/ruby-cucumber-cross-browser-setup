require 'selenium-webdriver'

class Driver
  attr_accessor :driver, :start

  def self.startup(browser_name)
    puts browser_name
    @driver = driver_setup(browser_name)
  end

  def self.driver_setup(browser)
    case browser.downcase
      when 'chrome_local'
          puts "Starting Chrome..."
          @driver = Selenium::WebDriver.for :chrome
      when 'firefox_local'
        puts "Starting Firefox..."
        @driver = Selenium::WebDriver.for :firefox
      else
        Cucumber.logger.log("Error: no browser for #{browser}")
        Kernel.puts("Error: no browser for #{browser}")
    end
  end
end
