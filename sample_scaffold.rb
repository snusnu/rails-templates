run 'rake db:create'
run 'rails generate scaffold Person name:string'
run 'rake db:automigrate'

say ''
say '--------------------------------------------------------------------------'
say 'After the sever booted, point your browser at http://localhost:3000/people'
say '--------------------------------------------------------------------------'
say ''
