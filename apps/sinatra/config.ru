# Sinatra project home: http://www.sinatrarb.com/

require 'sinatra'

class HelloWorld < Sinatra::Base

  ENV['EDA'].to_i.times do |index|
    get "/#{index}" do
      'hello world sinatra'
    end
  end

  get '/' do
    'hello world sinatra'
  end

  get '/users/:user_id' do
    'dynamic'
  end

end

run HelloWorld
