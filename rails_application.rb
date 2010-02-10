# This needs to be called after one of the gemfile templates

apply 'http://github.com/snusnu/rails-templates/raw/rspec/rails_application_config.rb'
apply 'http://github.com/snusnu/rails-templates/raw/rspec/database.yml.rb'

run 'bundle install'

run 'rails generate rspec:install'
run 'rails generate scaffold Person name:string'

append_file 'spec/spec_helper.rb', '\nDataMapper.auto_migrate!\n'

run 'rake spec --trace'

run 'bundle lock'

say ''
say '--------------------------------------------------------------------------'
say 'After the sever booted, point your browser at http://localhost:3000/people'
say '--------------------------------------------------------------------------'
say ''

run 'rails server'
