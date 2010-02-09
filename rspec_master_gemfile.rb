append_file 'Gemfile', <<-GEMFILE

git 'git://github.com/rspec/rspec.git'
git 'git://github.com/rspec/rspec-core.git'
git 'git://github.com/rspec/rspec-expectations.git'
git 'git://github.com/rspec/rspec-mocks.git'
git 'git://github.com/rspec/rspec-rails.git'

group(:test) do
  gem 'rspec'
  gem 'rspec-core',         :require => 'rspec/core'
  gem 'rspec-expectations', :require => 'rspec/expectations'
  gem 'rspec-mocks',        :require => 'rspec/mocks'
  gem 'rspec-rails'
end
GEMFILE
