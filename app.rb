require_relative 'config/environment'

class App < Sinatra::Base
  # Configure sessions hash, set session secret
  configure do
    enable :sessions
    set :session_secret, "pootie_tang"
  end

  get '/' do
    erb :index
  end

  # Set item from params to sessions item key
  post '/checkout' do
    session[:item] = params[:item]
    @session = session

    erb :index
  end

end
