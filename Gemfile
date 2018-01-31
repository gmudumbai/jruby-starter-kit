source 'https://rubygems.org'
ruby '2.3.3'

gem 'activesupport', '~> 5.1', '>= 5.1.4'

group :development do
  gem 'guard-rspec', require: false
  gem 'guard-bundler'
  gem 'guard-rubocop', require: false
  gem 'guard-minitest', require: false
end

group :development, :test do
  gem 'rspec', '~> 3.7'
  gem 'minitest', '~> 5.11', '>= 5.11.3'
  gem 'dotenv', '~> 2.2', '>= 2.2.1'
end

group :test do
  gem 'simplecov', '~> 0.15.1', require: false      # Test coverage reporting
  gem 'webmock', '~> 3.3'                           # disallow real HTTP reqs from specs
end
