require 'grape'

class GrapeApp < Grape::API

  get '/' do
    'hello'
  end

  get '/users/:user_id' do
    'hello'
  end

end