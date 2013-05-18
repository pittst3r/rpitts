require "test_helper"

describe "Application layout feature" do
  include ApplicationHelper
  before do
    @root_titles = root_pages :no_home, :titles
  end
  
  it "shows root page menu" do
    visit root_path
    @root_titles.each { |t| page.text.must_include t }
  end
  
end
