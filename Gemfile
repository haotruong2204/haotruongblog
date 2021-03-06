source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "coffee-rails", "~> 4.2"
gem "devise", "~> 4.7", ">= 4.7.1"
# OmniAuth for Facebook
gem "omniauth-facebook", "~> 4.0"
# OmniAuth for Google
gem "omniauth-google-oauth2", "~> 0.4.1"
# ENV
gem "figaro"
gem "jbuilder", "~> 2.5"
gem "jquery-rails", "~> 4.3", ">= 4.3.5"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.3"
gem "sass-rails", "~> 5.0"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"

# Support
gem "config"

# Rubocop convention
gem "rubocop", "~> 0.74.0", require: false

# Editor
gem "ckeditor"

# Tree
gem "jstree-rails-4"

# search
gem "ransack"

# Paginate
gem "kaminari"
gem "bootstrap-kaminari-views"

# Upload file
gem "carrierwave"
gem "mini_magick"

# Multi language
gem 'rails-i18n'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "mysql2", "~> 0.5.2"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :production do
  gem "pg", "~> 1.1", ">= 1.1.4"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "selenium-webdriver"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
