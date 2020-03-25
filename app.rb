require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    @session_secret = session
    erb :index
  end
  
  post '/checkout' do
    @session_secret = session
    erb :checkout
  end
end