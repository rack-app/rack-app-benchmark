require 'grape'

class API < Grape::API

  ENV['EDA'].to_i.times do |index|
    get "/#{index}" do
      {hello: "world"}
    end
  end

  get '/' do
    {hello: "world"}
  end

  get '/users/:user_id' do
    {resp: 'd'}
  end

end

run API