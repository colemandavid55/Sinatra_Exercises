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

get '/dog-registration' do
  erb :dog_registration
end

get '/dog-registration-results' do
  puts params
  @name = params[:name]
  @weight = params[:weight]
  @raw_diet = params[:raw_diet]
  @breed = params[:breed]
  erb :dog_registration_results
end
