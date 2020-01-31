require "cucumber"
require "Capybara/cucumber"
require "rspec"
require "selenium-webdriver"
require "byebug"
require "faker"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    #config.app_host = "http://demo.automationtesting.in/"
    Capybara.default_max_wait_time = 20

    browser = Capybara.current_session.driver.browser
    browser.manage.window.resize_to(1920, 1080)

end