require_relative './driver'

module CustomDriver

  def self.wait_for(seconds)
    Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
  end

end
