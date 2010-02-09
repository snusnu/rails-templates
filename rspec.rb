append 'Gemfile', <<-GEMFILE

git 'git://github.com/rspec/rspec.git'
git 'git://github.com/rspec/rspec-core.git'
git 'git://github.com/rspec/rspec-expectations.git'
git 'git://github.com/rspec/rspec-mocks.git'
git 'git://github.com/rspec/rspec-rails.git'

gem 'rspec'
gem 'rspec-core'
gem 'rspec-expectations'
gem 'rspec-mocks'
gem 'rspec-rails'
GEMFILE

run('bundle install vendor')

run('script/rails generate rspec:install')

apply 'http://github.com/snusnu/rails-templates/raw/rspec/sample_scaffold.rb'

run('rspec spec')
run('vendor/bin/rake spec')
