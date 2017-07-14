source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.4.1"

gem "rails", "~> 5.1.2"

# Use postgresql as the database for Active Record
gem "pg", "~> 0.18"

# Use Puma as the app server
gem "puma", "~> 3.7", group: :production

# ENV management
# needs to load before rails so that the Heroku ENVs can be initialized
gem "dotenv-rails", groups: [:development, :test]

# App deployments to Heroku no longer need this gem in Rails 5
# Confirm config/environments/production.rb are configured for support
# gem "rails_12factor"

# ASSET MANAGEMENT
# bootstrap the app styles and theme
gem "bootstrap-sass", "~> 3.3.6"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Use Uglifier as compressor for JavaScript assets
gem "uglifier", ">= 1.3.0"
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem "therubyracer", platforms: :ruby
gem "jquery-rails", "~> 4.3.1"
# Simple form field management
gem "simple_form", "~> 3.5.0"
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem "turbolinks", "~> 5"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# HTML5 offline support for mobile devices
gem "rack-offline", "~> 0.6.4"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 3.0"
# Use ActiveModel has_secure_password
# gem "bcrypt", "~> 3.1.7"

# 3RD PARTY INTEGRATIONS
# wrapper for the star wars api
gem "swapir"
# enabled action cache for 3rd party requests
gem "actionpack-action_caching"

group :development, :test do
  # Call byebug anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]

  # Alternative to MiniTest
  gem "rspec-rails"
  gem "rspec-mocks"

  # Alternative to fixtures
  gem "factory_girl_rails"

  # Adds support for Capybara system testing and selenium driver
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"

  # Automated application auditing
  gem "brakeman"
  gem "rubycritic"
  gem "traceroute"
  gem "rubocop"
  gem "rails_best_practices"
  gem "simplecov"
  gem "bullet"
  gem "bundler-audit"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "web-console", ">= 3.3.0"
  # Notifications for file changes referenced by guard

  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  # replace transactional fixtures
  gem "database_cleaner"
  # rspec simplified assertions
  gem "shoulda-matchers", require: false
  # generate test data
  gem "faker"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
