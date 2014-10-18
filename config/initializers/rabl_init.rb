# config/initializers/rabl_init.rb
require 'rabl'
Rabl.configure do |config|
    config.view_paths = [Rails.root.join('app', 'views', 'api', 'v1')]
    config.include_json_root = false
    config.include_child_root = false
end
