source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "3.1.3"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 7.0.6"
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.5', '>= 1.5.4'
# Use Puma as the app server
gem "puma", "~> 5.0"
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.11', '>= 2.11.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1', '>= 3.1.20'
gem 'bindex', '~> 0.8.1'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry-byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '~> 4.2', '>= 4.2.1'
  gem 'listen', '~> 3.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

gem 'friendly_id', '~> 5.4.0'

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'friendly_id', '~> 5.1.0'

gem 'devise', '~> 4.9', '>= 4.9.3'

gem 'bootstrap', '~> 4.0.0.alpha6'

gem 'mihaila_view_tool', git: 'https://github.com/Adrian-Mihaila/mihaila_view_tool'

gem 'petergate', '~> 3.0'

gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'

gem 'kaminari', '~> 1.2', '>= 1.2.2'

gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'

gem 'therubyracer', platforms: :ruby
gem 'wdm', '>= 0.1.0' if Gem.win_platform?

gem 'therubyracer', platforms: :ruby

gem 'wdm', '>= 0.1.0' if Gem.win_platform?

gem 'carrierwave', '~> 3.0', '>= 3.0.5'

gem 'mini_magick', '~> 4.12'

gem 'carrierwave-aws', '~> 1.6'

gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'