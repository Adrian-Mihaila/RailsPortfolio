source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "3.1.3"

gem "rails", "~> 7.0.6"
gem 'pg', '~> 1.5', '>= 1.5.4'
gem "puma", "~> 5.0"
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.11', '>= 2.11.5'
gem 'bcrypt', '~> 3.1', '>= 3.1.20'
gem 'bindex', '~> 0.8.1'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-byebug'
end

group :development do
  gem 'web-console', '~> 4.2', '>= 4.2.1'
  gem 'listen', '~> 3.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'friendly_id', '~> 5.4.0'
gem 'devise', '~> 4.9', '>= 4.9.3'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'mihaila_view_tool', git: 'https://github.com/Adrian-Mihaila/mihaila_view_tool'
gem 'petergate', '~> 3.0'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'
gem 'kaminari', '~> 1.2', '>= 1.2.2'
gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'
gem 'therubyracer', platforms: :ruby
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
gem 'carrierwave', '~> 3.0', '>= 3.0.5'
gem 'mini_magick', '~> 4.12'
gem 'carrierwave-aws', '~> 1.6'
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
gem 'cocoon', '~> 1.2', '>= 1.2.15'
gem 'gritter', '~> 1.2'
gem "x", "~> 0.14.1"
gem 'redis', '~> 5.0', '>= 5.0.8'