require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
require_relative 'lib/follower_clash'

get '/' do
  erb :index
end

post '/twitter' do
  @user1 = FollowerClash::User.new(params[:first_hash])
  @user2 = FollowerClash::User.new(params[:second_hash])
  @result = FollowerClash::Comparer.new(@user1, @user2)

  erb :twitter_results
end
