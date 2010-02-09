append_file 'Gemfile', <<-GEMFILE

group(:test) do
  gem 'rspec',              '2.0.0.a6'
  gem 'rspec-core',         '2.0.0.a6'
  gem 'rspec-expectations', '2.0.0.a6'
  gem 'rspec-mocks',        '2.0.0.a6'
  gem 'rspec-rails',        '2.0.0.a6'
end
GEMFILE
