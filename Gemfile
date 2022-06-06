source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'rails', '~> 6.1.4'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.6'
gem 'webpacker', '~> 5.4.3'
gem "redis", ">= 4.2.5"

gem "cable_ready", "5.0.0.pre9"
gem "stimulus_reflex", "3.5.0.pre9"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
  gem 'standard'
  gem 'ruby_jard'
  gem "better_errors"
  gem "binding_of_caller"
end
