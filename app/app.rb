require 'sinatra/base'
require_relative 'controllers/key_values'

class DatabaseServer < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  set :port, 4000

  get '/' do
    
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
