ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "minitest/autorun"
require "capybara/rails"
require "capybara/poltergeist"
require "database_cleaner"

DatabaseCleaner.strategy = :truncation
Capybara.default_driver = :poltergeist
Refinery::Core::Engine.routes.default_url_options[:host] = 'localhost:3000'

# save_and_open_page

class FeatureTest < MiniTest::Spec
  include Refinery::Core::Engine.routes.url_helpers
  include Capybara::DSL
  Rpitts::Application.load_tasks
  register_spec_type(/feature$/, self)
    
  before do
    Rake::Task["db:seed"].tap(&:reenable).invoke
    FactoryGirl.build(:superuser).create_first
  end
  after do
    DatabaseCleaner.clean
  end
end

Turn.config.format = :outline
