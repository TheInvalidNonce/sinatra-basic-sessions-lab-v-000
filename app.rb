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

  post '/checkout' do
    sessions[:item]

    erb :index
  end

end
