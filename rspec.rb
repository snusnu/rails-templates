append 'Gemfile', <<-GEMFILE

git 'git://github.com/rspec/rspec-core.git'
git 'git://github.com/rspec/rspec-expectations.git'
git 'git://github.com/rspec/rspec-mocks.git'
git 'git://github.com/rspec/rspec-rails.git'

gem 'rspec-core'
gem 'rspec-expectations'
gem 'rspec-mocks'
gem 'rspec-rails'
GEMFILE

run('bundle install')
run('script/rails generate rspec:install')
