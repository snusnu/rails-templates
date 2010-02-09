run 'vendor/bin/rake db:create'
run 'vendor/bin/rails generate scaffold Person name:string'
run 'vendor/bin/rake db:automigrate'

say ''
say '--------------------------------------------------------------------------'
say 'After the sever booted, point your browser at http://localhost:3000/people'
say '--------------------------------------------------------------------------'
say ''
