source "https://rubygems.org"

gem "rails"
gem "jquery-rails"
gem "jquery-ui-rails"
gem "jbuilder"
gem "capistrano"
gem "activeadmin", github: "gregbell/active_admin"
gem "haml"
gem "sass"
gem "state_machine"
gem "formtastic"
gem "friendly_id"
gem "thin"
gem "wirble", require: false
gem "heroku"
gem "paperclip"
gem "fancybox-rails"
gem "tinymce-rails"

group :production do
  gem "pg"
  gem "shelly-dependencies"
end

group :development, :test do
  gem "sqlite3"
end

group :assets do
  gem "therubyracer", require: "v8"
  gem "sass-rails"
  gem "coffee-rails"
  gem "coffee-script-source", "~> 1.4.0"
  gem "uglifier"
  gem "compass-rails"
end

group :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
end

ruby "2.0.0"
