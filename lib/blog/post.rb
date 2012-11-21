module Blog
  class Post
    
    ROUTE = '/post/:slug/?'
    
    def initialize(config)
      @config = config
    end
    
    def title
      @config['title'].split('-').each{|word| word.capitalize!}.join(' ')
    end
    
    def content
       Kramdown::Document.new(@config['content']).to_html
    end
    
    def slug
      @slug || @config['slug'] || title.downcase.strip.gsub(/\s/, '-').gsub(/[^a-z0-9-]/, '')
    end
    
    def path
      "/posts/#{ slug }"
    end
    
    def date
      @config['date']
    end
    
  end
end