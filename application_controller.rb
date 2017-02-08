require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
 
  post '/gem' do
    gem=params[:gem]
    month=gem
    @result=gem(month)
    erb :results
  end
  
  
end