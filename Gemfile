source "https://rubygems.org"

gem 'rubocop', '~> 0.18'
gem 'foodcritic', '~> 3.0'
gem 'chefspec', '~> 3.2'
gem 'berkshelf', '~> 2.0'

# These tests take a bit longer than static analysis.
group :integration do
  gem 'test-kitchen',    '~> 1.1'
  gem 'kitchen-vagrant', '~> 0.14'
end
