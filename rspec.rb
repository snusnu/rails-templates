# TODO this always uses rspec master for now. Implement interactive templates!
apply 'http://github.com/snusnu/rails-templates/raw/rspec/rspec_master_gemfile.rb'

run 'bundle install'

run 'rails generate rspec:install'

apply 'http://github.com/snusnu/rails-templates/raw/rspec/sample_scaffold.rb'

run 'bundle lock'

run 'rspec spec'
run 'rake spec'
