class TumblrPost
  attr_accessor :client, :uri
  
  CLIENT = Tumblr::Client.new
  URI = "sweatypitts.tumblr.com"
  
  class << self
    
    def info
      CLIENT.blog_info(URI)
    end
    
    def limit(int)
      obj = Hashie::Mash.new CLIENT.posts(URI, limit: int)
      obj.posts
    end
    
  end

end
