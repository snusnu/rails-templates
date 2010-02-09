# This needs to be called after one of the gemfile templates

apply 'http://github.com/snusnu/rails_templates/blob/master/rails_application_config.rb'
apply 'http://github.com/snusnu/rails_templates/blob/master/database.yml.rb'

run 'bundle install vendor'

apply 'http://github.com/snusnu/rails_templates/blob/master/sample_scaffold.rb'

run 'script/rails server'