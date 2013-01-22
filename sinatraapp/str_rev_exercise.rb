# str_rev_exercise.rb
require 'sinatra'
get '/' do
  erb :read_string
end

post '/display' do
  erb :show_rev_string
end
