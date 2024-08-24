Haml::Engine.disable_option_validator!

config[:css_dir]    = 'stylesheets'
config[:js_dir]     = 'javascripts'
config[:images_dir] = 'images'

set :haml, { :format => :html5 }

activate :directory_indexes

# activate :asset_hash

page '*.html.haml', :layout => 'layout'

configure :development do
  set :debug_assets, true
end

configure :build do
  config[:host] = "http://florianhanke.com"

  activate :minify_css
end

activate :blog do |blog|
  blog.default_extension = ".md"
  blog.layout = 'article'
  blog.permalink = "blog/{year}/{month}/{day}/{title}.html"
  blog.sources = "blog/{year}-{month}-{day}-{title}.html"
  blog.summary_length = 250
  # blog.taglink = "categories/{tag}.html"

  blog.paginate = true
  blog.per_page = 10
  blog.page_link = "page/{num}"

  blog.new_article_template = File.expand_path('../source/blog_template.yml', __FILE__)
end
