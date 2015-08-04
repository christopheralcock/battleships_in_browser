require 'sinatra/base'
require 'battleships'

class Battleshipsweb < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    'Hello Battleshipsweb!'
    erb :index
  end


  get '/new_game' do
    "What's your name?"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
