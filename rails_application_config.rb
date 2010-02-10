gsub_file 'config/application.rb', /require 'rails\/all'/ do
<<-RUBY
# Pick the frameworks you want:
require 'action_controller/railtie'
require 'rails3_datamapper/railtie'
# require 'action_mailer/railtie'
# require 'active_resource/railtie'
# require 'rails/test_unit/railtie'
RUBY
end

gsub_file 'config/application.rb', /#{config.action_mailer.raise_delivery_errors = false}/ do
  "# config.action_mailer.raise_delivery_errors = false"
end
