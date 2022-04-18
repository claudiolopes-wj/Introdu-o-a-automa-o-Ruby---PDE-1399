require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome_headless
    config.app_host = "https://magento.nublue.co.uk/" #site que vai ser aberto durante os teste
end