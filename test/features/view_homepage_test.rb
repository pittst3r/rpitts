require "test_helper"

describe "View homepage feature" do
  
  it "visits homepage" do
    visit root_path
    page.text.must_include "Company Name"
  end
  
end
