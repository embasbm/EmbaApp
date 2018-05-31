# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'action_cable/testing/rspec'
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
require 'support/factory_bot'
require "selenium/webdriver"

Capybara.server = :puma

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.javascript_driver = :selenium_chrome

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver        = :selenium_chrome
end

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  config.before(:each, type: :feature) do
    Capybara.current_session.driver.browser.manage.window.resize_to(2_500, 2_500)
  end
end
