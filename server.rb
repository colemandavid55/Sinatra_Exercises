require 'rubygems'
require 'sinatra'

set :bind, '0.0.0.0'

get '/welcome/:name' do 
  @name = params[:name]
  erb :welcome
end

get '/say/*/to/*' do
  puts params
  erb :say
end

get '/test' do
  erb :info
end

post '/test' do 
  puts params
  @name = params[:name]
  @email = params[:mail]
  @vegetarian = params[:vegetarian]
  @blood_type = params[:bloodtype]
  erb :summary
end
