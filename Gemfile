source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '3.2.12'
gem 'jquery-rails'
gem "devise"
gem "simple_form"
gem "haml-rails"
gem "strong_parameters"
gem "cache_digests"
gem "active_model_serializers"
gem 'doorkeeper', "~> 0.6.7"

#group :assets do
  gem "twitter-bootstrap-rails", ">= 2.1.0"
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "less-rails"
  gem "libv8", "~> 3.11.8"
  gem "therubyracer"
#end

group :development do
  gem "heroku"
end

group :development, :test do
  gem 'sqlite3'
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "steak"
end

group :production do
  gem "pg"
end

group :test do
  gem "launchy"
  gem "poltergeist"
  gem "database_cleaner"
  gem "oauth2"
  gem "capybara-json"
end
