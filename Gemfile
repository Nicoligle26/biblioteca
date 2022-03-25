# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.4', '>= 6.1.4.6'
# Use sqlite3 as the database for Active Record
gem 'pg', '~> 1.3', '>= 1.3.3'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# https://rubygems.org/gems/rspec-rails
gem 'rspec-rails', '~> 5.1', '>= 5.1.1'

group :test do
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'shoulda-matchers', '~> 4.5'
  gem 'simplecov', require: false, group: :test
  gem 'webmock', '~> 3.14'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
# https://rubygems.org/gems/annotate
gem 'annotate', '~> 3.2'
# https://rubygems.org/gems/rubocop
gem 'rubocop', '~> 1.25', '>= 1.25.1'
# https://rubygems.org/gems/active_model_serializers
gem 'active_model_serializers', '~> 0.10.13'
# https://rubygems.org/gems/dotenv-rails
gem 'dotenv-rails', '~> 2.7', '>= 2.7.6', groups: %i[development test]
# https://rubygems.org/gems/devise
gem 'devise', '~> 4.8', '>= 4.8.1'
# https://rubygems.org/gems/devise_token_auth
gem 'devise_token_auth', '~> 1.2'
# https://rubygems.org/gems/rack-cors
gem 'rack-cors', '~> 1.1', '>= 1.1.1'
# https://rubygems.org/gems/letter_opener
gem 'letter_opener', '~> 1.7'
# https://github.com/twbs/bootstrap-rubygem
gem 'bootstrap', '~> 5.1.3'
# https://rubygems.org/gems/sass-rails
gem 'sass-rails', '~> 6.0'
