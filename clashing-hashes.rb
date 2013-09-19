require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

post '/twitter' do
  @hash_one = params[:first_hash]
  @hash_two = params[:second_hash]
  erb :twitter_results
end
