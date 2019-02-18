require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = params['name']
    @breed = params['breed']
    @age = "#{params['age']} months"
    @puppy = Puppy.new(@name, @breed, @age)
    erb :display_puppy
      # binding.pry
  end

end
