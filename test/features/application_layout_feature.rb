require "test_helper"

describe "Application layout feature" do
  include ApplicationHelper
  before do
    @root_titles = root_pages :no_home, :titles
  end
  
  it "shows root page menu" do
    visit root_path
    @root_titles.each { |t| page.text.must_include t.title_case }
  end
  
  it "shows logotype" do
    visit root_path
    page.text.must_include "R. Pitts".title_case
    page.text.must_include "Web Application Development".title_case
  end
  
  it "links home on logo" do
    find("header").click_link("R. Pitts")
    current_path.must_equal "/"
  end
  
  it "shows page content" do
    Refinery::Page.live.each do |p|
      visit page_path(p)
      page.text.must_include p.title.title_case
    end
  end
  
end
