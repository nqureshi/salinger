::APP_DIR = File.expand_path(File.dirname(__FILE__))
require ::APP_DIR + '/blog'
run Blog::Application