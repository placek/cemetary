source "https://rubygems.org"

gem "rails"
gem "jquery-rails"
gem "jbuilder"
gem "capistrano"
gem "activeadmin"
gem "haml"
gem "sass"
gem "will_paginate"
gem "state_machine"
gem "formtastic"
gem "friendly_id"
gem "thin"
gem "wirble", require: false
gem "heroku"

group :production do
  gem "pg"
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
  gem "fancybox2-rails", "~> 0.2.4"
end

group :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
end
ruby "2.0.0"
