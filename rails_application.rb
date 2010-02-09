# This needs to be called after one of the gemfile templates

apply 'http://github.com/snusnu/rails-templates/raw/rspec/rails_application_config.rb'
apply 'http://github.com/snusnu/rails-templates/raw/rspec/database.yml.rb'

run 'bundle install vendor'

apply 'http://github.com/snusnu/rails-templates/raw/rspec/rspec.rb'

run 'vendor/bin/rails server'