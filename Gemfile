source 'https://rubygems.org'

ruby '1.9.3'

gem 'airbrake'
gem 'bourbon'
gem 'high_voltage'
gem 'jquery-rails'
gem 'pg'
gem 'psych'
gem 'rack-timeout'
gem 'rails', '>= 3.2.11'
gem 'simple_form'
gem 'strong_parameters'
gem 'thin'
gem 'sidekiq', '2.9.0'
gem 'slim', '>= 1.3.8'
gem 'sinatra'
gem 'sidekiq-dynamic-queues'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :development do
  gem 'foreman'
end

group :development, :test do
  gem 'guard'
  gem 'guard-spork'
  gem 'rspec-rails'
  gem 'sham_rack'
end

group :test do
  gem 'bourne', require: false
  gem 'capybara-webkit', '>= 0.14.1'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
end

group :staging, :production do
  gem 'newrelic_rpm'
end
