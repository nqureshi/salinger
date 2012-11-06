module Blog
  class Post
    
    ROUTE = '/post/:slug/?'
    
    def initialize(config)
      @config = config
    end
    
    def title
      @config['title']
    end
    
    def content
      @config['content']
    end
    
    def slug
      @slug || @config['slug'] || title.downcase.strip.gsub(/\s/, '-').gsub(/[^a-z0-9-]/, '')
    end
    
    def path
      "/posts/#{ slug }"
    end
    
  end
end