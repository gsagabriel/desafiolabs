require "allure-cucumber"
require "httparty"
require "faker"

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
