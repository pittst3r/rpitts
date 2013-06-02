require "test_helper"

describe "Tumblr posts feature" do
  include ApplicationHelper
  
  it "shows last 20 posts on homepage" do
    @posts = TumblrPost.limit(20)
    visit root_path
    @posts.each do |post|
      assert page.has_css?("a[href='#{post.post_url}']")
    end
  end
  
end
