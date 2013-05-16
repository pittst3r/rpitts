require "test_helper"
# save_and_open_page
describe "View homepage feature" do
  before do
    DatabaseCleaner.start
    
    FactoryGirl.build(:superuser).create_first
  end
  after do
    DatabaseCleaner.clean
  end
  
  it "visits homepage" do
    visit root_path
    page.text.must_include "Company Name"
  end
  
end
