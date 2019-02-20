require_relative 'models/puppy.rb'
require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  # get '/puppy' do
  #
  #   @puppy = Puppy.new(params[:name, :breed, :age])
  #   # puts params
  #   binding.pry
  #   erb :create_puppy
  # end


  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]

    # puts params
    # binding.pry
    erb :display_puppy
  end



end
