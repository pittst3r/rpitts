require "test_helper"

class TumblrPostTest < Minitest::Unit::TestCase

  def test_valid_blog
    assert TumblrPost.info
  end
  
  def test_limit
    limit = 2
    assert_equal limit, TumblrPost.limit(limit).count
  end
  
end
