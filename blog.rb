require 'sinatra'
require 'yaml'
require 'kramdown'

require File.dirname(__FILE__) + '/lib/blog/' + 'post'

module Blog
  class Application < Sinatra::Base
    
    PUBLIC_DIR    = File.join(APP_DIR, 'public')
    VIEW_DIR      = File.join(APP_DIR, 'views')
    CONTENT_FILE  = File.join(APP_DIR, 'posts.yaml')
    
    get('/') { erb :index }
    
    get Post::ROUTE do
      @post = posts.find { |p| p.slug  == params[:slug] }
      erb :post
    end
    
    helpers do
      
      def content
        @content || YAML.load(File.read(CONTENT_FILE))
      end
      
      def posts
        @posts || content.each.map(&Post.method(:new))
      end
    
    end
  end
end