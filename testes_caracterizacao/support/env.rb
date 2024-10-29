require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'vue_component' 
require 'rails_helper'

Capybara.default_driver = :selenium_chrome
Capybara.app_host = 'http://localhost:8080/2022/1'
Capybara.default_max_wait_time = 5

World(RSpec::Matchers)