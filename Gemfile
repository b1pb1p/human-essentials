source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.7.2"

gem 'azure-storage', '~> 0.15.0.preview', require: false
gem 'azure-storage-blob', '>= 2.0.3'
gem 'bootstrap', '~> 4.6.1'
gem 'bootstrap-daterangepicker-rails'
gem 'bootstrap-select-rails'
gem "bugsnag"
gem "chartkick"
gem "cocoon"
gem "devise", ">= 4.8.1"
gem 'discard', '~> 1.2'
gem "devise_invitable", ">= 2.0.6"
gem "dotenv-rails", ">= 2.8.0"
gem "filterrific"
gem "flipper"
gem "flipper-active_record"
gem "flipper-ui"
gem "font-awesome-rails", ">= 4.7.0.8"
gem "font-ionicons-rails"
gem "fullcalendar-rails"
gem "geocoder"
gem "groupdate", "~> 5.2"
gem "image_processing"
gem "jbuilder"
gem "jquery-rails", ">= 4.5.0"
gem "jquery-ui-rails", ">= 7.0.0"
gem "jwt"
gem "kaminari", ">= 1.2.2"
gem "mini_racer", "~> 0.3.1"
gem "momentjs-rails", ">= 2.29.1"
gem "nokogiri", ">= 1.16.5"
gem "paperclip" # needed for legacy migrations
gem "pg", "~> 1.2.3"
gem "simple_form", ">= 5.2.0"
gem 'popper_js'
gem "prawn-rails"
gem "puma"
gem "rails", "~> 6.1.4", ">= 6.1.4.1"
gem "sass-rails"
gem "sidekiq"
gem "strong_migrations", "~> 0.7.7"
gem "sprockets", "~> 4.0.2"
gem "toastr-rails"
gem "uglifier", ">= 1.3.0"
gem 'webpacker', '~> 5.4', '>= 5.4.1'
gem "yajl-ruby"
gem "recaptcha"
gem "paper_trail" # for tracking history of InventoryItem

group :production do
  gem 'lograge' , '>= 0.12.0' # Reduce the noise of logs and include custom fields to it for easier access
  gem "skylight"
end

group :development, :test, :staging do
  gem 'factory_bot_rails', '>= 6.3.0'
  gem "database_cleaner"
  gem 'faker'
end

group :development, :test do
  gem "awesome_print"
  gem "brakeman"
  gem "fakeredis", require: "fakeredis/rspec"
  gem "guard-rspec"
  gem "knapsack_pro"
  gem "pry-rails"
  gem "pry-remote"
  gem "pry-nav"
  gem "rb-readline", "~> 0.5.3"
  gem "rspec-rails", "~> 5.0.2"
  gem "rubocop"
  gem "rubocop-rails", "~> 2.9.1"
  gem "terminal-notifier-guard"
  gem "terminal-notifier"
end

group :development do
  gem "annotate"
  gem "binding_of_caller"
  gem "better_errors"
  gem "bullet"
  gem "capistrano-rails"
  gem "capistrano-rvm"
  gem "capistrano-bundler"
  gem "capistrano3-puma"
  gem "capistrano-rails-console", require: false
  gem 'capistrano-sidekiq'
  gem 'foreman'
  gem "letter_opener"
  gem "listen", "~> 3.5.0"
  gem "rails-erd"
  gem "spring"
  gem "spring-watcher-listen"
  gem "web-console", ">= 4.2.0"
end

group :test do
  gem "capybara", "~> 3.36", ">= 3.36.0"
  gem "capybara-screenshot", ">= 1.0.26"
  gem "launchy"
  gem 'magic_test', '>= 0.0.7'
  gem "rails-controller-testing"
  gem "rspec-sidekiq"
  gem 'simplecov'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'webdrivers', '~> 4.6', '>= 4.6.1'
  gem "webmock", "~> 3.14"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem

# This 'if' may seem redundant but for some reason it is necessary to suppress
# a warning on non (Windows or JRuby) platforms.
if %w(mingw mswin x64_mingw jruby).include?(RUBY_PLATFORM)
  gem "tzinfo-data", "~> 1.2", platforms: %i(mingw mswin x64_mingw jruby)
end
