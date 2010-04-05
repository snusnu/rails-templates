remove_file 'Gemfile'
create_file 'Gemfile' do
<<-GEMFILE
source 'http://rubygems.org'

git 'git://github.com/rails/rails.git'

gem 'activesupport',        '~> 3.0.0.beta2', :require => 'active_support'
gem 'actionpack',           '~> 3.0.0.beta2', :require => 'action_pack'
gem 'actionmailer',         '~> 3.0.0.beta2', :require => 'action_mailer'
gem 'railties',             '~> 3.0.0.beta2', :require => 'rails'

gem 'data_objects',         '~> 0.10.1'
gem 'do_sqlite3',           '~> 0.10.1'

# You can use any of the other available database adapters.
# This is only a small excerpt of the list of all available adapters
# Have a look at
#
#  http://wiki.github.com/datamapper/dm-core/adapters
#  http://wiki.github.com/datamapper/dm-core/community-plugins
#
# for a rather complete list of available datamapper adapters and plugins

# gem 'do_mysql',             '~> 0.10.1'
# gem 'do_postgres',          '~> 0.10.1'
# gem 'do_oracle',            '~> 0.10.1'

gem 'dm-core',              '~> 0.10.2', :git => "git://github.com/datamapper/dm-core.git"
gem 'dm-rails',             '~> 0.10.2', :git => "git://github.com/datamapper/dm-rails.git"
gem 'dm-types',             '~> 0.10.2', :git => "git://github.com/datamapper/dm-types"
gem 'dm-validations',       '~> 0.10.2', :git => "git://github.com/datamapper/dm-validations"
gem 'dm-constraints',       '~> 0.10.2', :git => "git://github.com/datamapper/dm-constraints"
gem 'dm-transactions',      '~> 0.10.2', :git => "git://github.com/datamapper/dm-transactions.git"
gem 'dm-aggregates',        '~> 0.10.2', :git => "git://github.com/datamapper/dm-aggregates"
gem 'dm-timestamps',        '~> 0.10.2', :git => "git://github.com/datamapper/dm-timestamps"
gem 'dm-migrations',        '~> 0.10.2', :git => "git://github.com/datamapper/dm-migrations"
gem 'dm-observer',          '~> 0.10.2', :git => "git://github.com/datamapper/dm-observer"

group(:test) do

  gem 'rspec',              '2.0.0.beta.5', :git => "git://github.com/rspec/rspec.git"
  gem 'rspec-core',         '2.0.0.beta.5', :git => "git://github.com/rspec/rspec-core.git",         :require => 'rspec/core'
  gem 'rspec-expectations', '2.0.0.beta.5', :git => "git://github.com/rspec/rspec-expectations.git", :require => 'rspec/expectations'
  gem 'rspec-mocks',        '2.0.0.beta.5', :git => "git://github.com/rspec/rspec-mocks.git",        :require => 'rspec/mocks'
  gem 'rspec-rails',        '2.0.0.beta.5', :git => "git://github.com/rspec/rspec-rails.git"

end
GEMFILE
end
