# This needs to be called after one of the gemfile templates

apply 'http://github.com/snusnu/rails-templates/raw/master/rails_application_config.rb'
apply 'http://github.com/snusnu/rails-templates/raw/master/database.yml.rb'

run 'bundle install'

run 'rails generate rspec:install'
run 'rails generate scaffold Person name:string'

apply 'http://github.com/snusnu/rails-templates/raw/master/spec_helper.rb'

run 'rake spec --trace'

say ''
say '--------------------------------------------------------------------------'
say 'After the sever booted, point your browser at http://localhost:3000/people'
say '--------------------------------------------------------------------------'
say ''

run 'rails server'
