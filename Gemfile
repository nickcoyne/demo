source 'https://rubygems.org'

gem 'rails', '4.2.2'
gem 'pg'

## API
# gem 'yt'
# gem 'gibbon'

## Assets
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'yui-compressor' # Use YUI-Compresson as compressor for CSS assets
gem 'coffee-rails', '~> 4.1.0' # Use CoffeeScript for .coffee assets and views
gem 'bower-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'bourbon' # http://bourbon.io/
gem 'neat'
gem 'bitters'
gem 'refills'
# gem 'asset_sync'
# gem 'fog', require: 'fog/aws/storage'

## Authentication
gem 'clearance'

## Caching
# gem 'dalli'

## CLI
# gem 'ruby-progressbar'
# gem 'rake-progressbar'
# gem 'table_print'

## Models
gem 'active_model_serializers', '~> 0.8.0' # This can be upgraded when the gem hits 1.0.
# gem 'sdoc', '~> 0.4.0', group: :doc # bundle exec rake doc:rails generates the API under doc/api.
# gem 'acts_as_list'
# gem 'ancestry'
# gem 'friendly_id'
# gem 'kaminari'
# gem 'paper_trail'
# gem 'rakismet'
# gem 'aasm'
gem 'bcrypt', '~> 3.1.7' # Use ActiveModel has_secure_password

# Monitoring
gem 'newrelic_rpm'

## Search
# gem 'searchkick'
# gem 'typhoeus'

## Seeds
gem 'seedbank'

## SEO
gem 'sitemap_generator'

## Uploads
gem 'refile'
gem 'mini_magick'

## Utility
# gem 'sidekiq'
#   gem 'sinatra', require: nil
#   gem 'sidekiq-failures'
#   gem 'sidekiq_mailer'
#   gem 'sidekiq-status'
#   gem 'curb'

## Views
gem 'active_link_to'
gem 'simple_form', '~> 3.0'
gem 'country_select'
gem 'reform'
gem 'slim-rails'
gem 'turbolinks' # Read more: https://github.com/rails/turbolinks

group :development do
  gem 'web-console', '~> 2.0' # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'spring' # Read more: https://github.com/rails/spring
  gem 'spring-commands-rspec'
  gem 'foreman'
  gem 'quiet_assets'
  gem 'derailed' # https://github.com/schneems/derailed_benchmarks
    gem 'stackprof'
end

group :development, :test do
  gem 'byebug' # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'factory_girl_rails'
  gem 'ffaker'
  # gem 'bundler-audit', require: false
  gem 'dotenv-rails'
  gem 'rspec-rails', '~> 3.1.0'
end

group :test do
  gem 'capybara-webkit', '>= 1.2.0'
  gem 'database_cleaner'
  gem 'formulaic'
  gem 'launchy'
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
  gem 'rspec-sidekiq'
  # gem 'codeclimate-test-reporter', require: nil
end

group :staging do
  gem 'recipient_interceptor'
end

group :staging, :production do
  gem 'unicorn'
  gem 'rails_12factor'
  gem 'rack-timeout'
  # gem 'rack-attack'
  # gem 'rack-ssl-enforcer'
end
