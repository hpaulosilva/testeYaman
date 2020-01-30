require "cucumber"
require "Capybara/cucumber"
require "rspec"
require "selenium-webdriver"
require "byebug"
require "faker"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    #config.app_host = "http://demo.automationtesting.in/"
    config.default_max_wait_time = 15
end