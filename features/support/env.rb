ENV['RAILS_ENV'] = 'test'

require './config/environment'
require 'rails/test_help'
require 'minitest/spec'
require 'minitest/mock'
require 'capybara/rails'
require 'capybara/poltergeist'
require 'spinach/capybara'


::Capybara.register_driver :poltergeist do |app|
  ::Capybara::Poltergeist::Driver.new(app)
end

::Capybara.default_driver = :poltergeist

