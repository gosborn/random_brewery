source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'active_rest_client'
gem 'geocoder'
gem 'figaro'
gem 'rubocop'

gem 'bootstrap-sass', '~> 3.3.5'
gem 'bootswatch-rails'

gem 'unicorn', '~> 4.8.3'

group :development do
  gem 'capistrano', '~> 3.2.1'
  gem 'capistrano-rails', '~> 1.1.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv', '~> 2.0'
  gem 'capistrano-cookbook', require: false
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'byebug'
  gem 'pry'
  gem 'sqlite3'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
