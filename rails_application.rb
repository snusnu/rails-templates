# This needs to be called after one of the gemfile templates

apply 'http://github.com/snusnu/rails-templates/raw/master/rails_application_config.rb'
apply 'http://github.com/snusnu/rails-templates/raw/master/database.yml.rb'

run 'bundle install'

initializer 'jruby_monkey_patch.rb', <<-CODE
if RUBY_PLATFORM =~ /java/
  # ignore the anchor to allow this to work with jruby:
  # http://jira.codehaus.org/browse/JRUBY-4649
  class Rack::Mount::Strexp

    class << self
      alias :compile_old :compile
      def compile(str, requirements, separators, anchor)
        self.compile_old(str, requirements, separators)
      end
    end
  end
end
CODE

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
