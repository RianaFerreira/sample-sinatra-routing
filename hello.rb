require 'pry'
require 'sinatra'
require 'sinatra/reloader'

#if there is a get request for a specific route of a website it should listen for
get '/' do
  "Welcome to the homepage"
end
get '/hello' do
  "Hello world"
end
get '/mom' do
  "hi mom"
end
#access to key of a hash hi with the key :name
get '/hi/:name' do
  "Hi #{params[:name]}"
end
#access to key of a hash hi with the key :name or the key :surname
get '/hi/:name/:surname' do
  binding.pry
  "Hi there, #{params[:name]} #{params[:surname]}"
end

#enter localhost:4567/hi/riana/ferreira will use this request
get '/hi/:name/:surname/:age' do
  binding.pry
  "Hi there, #{params[:name]} #{params[:surname]}. You are #{params[:age]}"
end

#enter localhost:4567/time will use this request
get '/time' do
  binding.pry
  Time.new
end
