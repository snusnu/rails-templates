remove_file 'Gemfile'
create_file 'Gemfile' do
<<-GEMFILE
source 'http://gemcutter.org'

git 'git://github.com/rails/rails.git'

git 'git://github.com/snusnu/dm-core.git', 'branch' => 'active_support'
git "git://github.com/snusnu/dm-more.git", 'branch' => 'active_support'
git 'git://github.com/snusnu/rails3_datamapper.git', 'branch' => 'cherry_pick_rails'

gem 'activesupport', :require => 'active_support'
gem 'activemodel',   :require => 'active_model'
gem 'actionpack',    :require => 'action_pack'
gem 'actionmailer',  :require => 'action_mailer'
gem 'railties',      :require => 'rails'

gem 'data_objects', '0.10.1'
gem 'do_sqlite3',   '0.10.1'

gem 'dm-core'
gem 'dm-types'
gem 'dm-validations'
gem 'dm-constraints'
gem 'dm-aggregates'
gem 'dm-timestamps'
gem 'dm-migrations'
gem 'dm-observer'
gem 'rails3_datamapper'
GEMFILE
end