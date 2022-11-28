config[:css_dir]    = 'stylesheets'
config[:js_dir]     = 'javascripts'
config[:images_dir] = 'images'

activate :asset_hash

configure :development do
  set :debug_assets, true
end

configure :build do
  activate :minify_css
end