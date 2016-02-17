require 'rack/app'
class RackApp < Rack::App

  get '/' do
    'hello'
  end

  get '/users/:user_id' do
    'hello'
  end

end