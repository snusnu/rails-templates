# TODO think about a better way
db_name = app_path.split('/').last

remove_file 'config/database.yml'
create_file 'config/database.yml' do
<<-YAML
defaults: &defaults
  adapter: sqlite3

development:
  database: dm_rails3_app_development.rb
  <<: *defaults

  # Add more repositories
  # repositories:
  #   repo1:
  #     adapter:  postgresql
  #     database: sample_development
  #     username: the_user
  #     password: secrets
  #     host:     localhost
  #   repo2:
  #     ...

test:
  database: dm_rails3_app_test.rb
  <<: *defaults
production:
  database: dm_rails3_app_production.rb
  <<: *defaults
YAML
end
