require 'rubygems'
require 'sinatra'

get '/:template' do
  buffer = ''
  name = File.expand_path("../#{params[:template]}", __FILE__)
  File.read(name).each do |line|
    buffer += line.gsub(/http:\/\/github.com\/snusnu\/rails-templates\/raw\/rspec/, 'http://localhost:4567')
  end
  buffer
end
