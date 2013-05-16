ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "minitest/autorun"
require "capybara/rails"
require "capybara/poltergeist"
require "database_cleaner"

DatabaseCleaner.strategy = :truncation
Capybara.default_driver = :poltergeist
Refinery::Core::Engine.routes.default_url_options[:host] = 'localhost:3000'

class FeatureTest < MiniTest::Spec
  include Refinery::Core::Engine.routes.url_helpers
  include Capybara::DSL
  register_spec_type(/feature$/, self)
  `rake db:seed`
end

Turn.config.format = :outline