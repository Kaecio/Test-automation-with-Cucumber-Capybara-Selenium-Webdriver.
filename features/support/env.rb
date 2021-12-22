require "capybara"
require "capybara/cucumber"
require "faker"
require "report_builder"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end
