remove_file 'Gemfile'
create_file 'Gemfile' do
<<-GEMFILE
source 'http://gemcutter.org'

gem 'rails',             '3.0.0.beta'

gem 'data_objects',      '0.10.1'
gem 'do_sqlite3',        '0.10.1'

git 'git://github.com/snusnu/dm-core.git', 'branch' => 'active_support'
git "git://github.com/snusnu/dm-more.git", 'branch' => 'active_support'

gem 'dm-core',           '~> 0.10.2'
gem 'dm-types',          '~> 0.10.2'
gem 'dm-validations',    '~> 0.10.2'
gem 'dm-constraints',    '~> 0.10.2'
gem 'dm-aggregates',     '~> 0.10.2'
gem 'dm-timestamps',     '~> 0.10.2'
gem 'dm-migrations',     '~> 0.10.2'
gem 'dm-observer',       '~> 0.10.2'

git 'git://github.com/dkubb/rails3_datamapper.git'

gem 'rails3_datamapper', '~> 0.10.2'
GEMFILE
end
