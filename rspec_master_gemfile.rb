append_file 'Gemfile', <<-GEMFILE

git 'git://github.com/rspec/rspec.git'
git 'git://github.com/rspec/rspec-core.git'
git 'git://github.com/rspec/rspec-expectations.git'
git 'git://github.com/rspec/rspec-mocks.git'
git 'git://github.com/rspec/rspec-rails.git'

group(:test) do
  gem 'rspec',              '2.0.0.a5'
  gem 'rspec-core',         '2.0.0.a5'
  gem 'rspec-expectations', '2.0.0.a5'
  gem 'rspec-mocks',        '2.0.0.a5'
  gem 'rspec-rails',        '2.0.0.a6'
end
GEMFILE
