config[:css_dir]    = 'stylesheets'
config[:js_dir]     = 'javascripts'
config[:images_dir] = 'images'

set :haml, { :format => :html5 }

# activate :asset_hash

page '*.html.haml', :layout => 'layout'

configure :development do
  set :debug_assets, true
end

configure :build do
  activate :minify_css
end