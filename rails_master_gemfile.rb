# workaround <<-GEMFILE wanting to
# execute the string subsitution
datamapper = '#{datamapper}'

remove_file 'Gemfile'
create_file 'Gemfile' do
<<-GEMFILE
source 'http://rubygems.org'

git 'git://github.com/rails/rails.git' do

  gem 'activesupport',      '~> 3.0.0.beta3', :require => 'active_support'
  gem 'actionpack',         '~> 3.0.0.beta3', :require => 'action_pack'
  gem 'actionmailer',       '~> 3.0.0.beta3', :require => 'action_mailer'
  gem 'railties',           '~> 3.0.0.beta3', :require => 'rails'

end

datamapper = 'git://github.com/datamapper'

gem 'dm-rails',             '~> 0.10.2', :git => "#{datamapper}/dm-rails.git"
gem 'dm-sqlite-adapter',    '~> 0.10.3', :git => "#{datamapper}/dm-sqlite-adapter.git"

# You can use any of the other available database adapters.
# This is only a small excerpt of the list of all available adapters
# Have a look at
#
#  http://wiki.github.com/datamapper/dm-core/adapters
#  http://wiki.github.com/datamapper/dm-core/community-plugins
#
# for a rather complete list of available datamapper adapters and plugins

# gem 'dm-mysql-adapter',     '~> 0.10.3', :git => "#{datamapper}/dm-mysql-adapter.git"
# gem 'dm-postgres-adapter',  '~> 0.10.3', :git => "#{datamapper}/dm-postgres-adapter.git"
# gem 'dm-oracle-adapter',    '~> 0.10.3', :git => "#{datamapper}/dm-oracle-adapter.git"
# gem 'dm-sqlserver-adapter', '~> 0.10.3', :git => "#{datamapper}/dm-sqlserver-adapter.git"

gem 'dm-migrations',        '~> 0.10.3', :git => "#{datamapper}/dm-migrations"
gem 'dm-types',             '~> 0.10.3', :git => "#{datamapper}/dm-types"
gem 'dm-validations',       '~> 0.10.3', :git => "#{datamapper}/dm-validations"
gem 'dm-constraints',       '~> 0.10.3', :git => "#{datamapper}/dm-constraints"
gem 'dm-transactions',      '~> 0.10.3', :git => "#{datamapper}/dm-transactions.git"
gem 'dm-aggregates',        '~> 0.10.3', :git => "#{datamapper}/dm-aggregates"
gem 'dm-timestamps',        '~> 0.10.3', :git => "#{datamapper}/dm-timestamps"
gem 'dm-observer',          '~> 0.10.3', :git => "#{datamapper}/dm-observer"

group(:test) do

  gem 'rspec',              '2.0.0.beta.6', :git => "git://github.com/rspec/rspec.git"
  gem 'rspec-core',         '2.0.0.beta.6', :git => "git://github.com/rspec/rspec-core.git",         :require => 'rspec/core'
  gem 'rspec-expectations', '2.0.0.beta.6', :git => "git://github.com/rspec/rspec-expectations.git", :require => 'rspec/expectations'
  gem 'rspec-mocks',        '2.0.0.beta.6', :git => "git://github.com/rspec/rspec-mocks.git",        :require => 'rspec/mocks'
  gem 'rspec-rails',        '2.0.0.beta.6', :git => "git://github.com/rspec/rspec-rails.git"

end

# ------------------------------------------------------------------------------

# These gems are only listed here in the Gemfile because we want to pin them
# to the github repositories for as long as no stable version has been released.
# The dm-core gem is a hard dependency for dm-rails so it would get pulled in by
# simply adding dm-rails. The dm-do-adapter gem is a hard dependency for any of
# the available dm-xxx-adapters. Once we have stable gems available, pinning these
# gems to github will be optional.

gem 'dm-core',              '~> 0.10.3', :git => "#{datamapper}/dm-core.git"
gem 'dm-do-adapter',        '~> 0.10.3', :git => "#{datamapper}/dm-do-adapter"
GEMFILE
end
