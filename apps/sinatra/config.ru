# Sinatra project home: http://www.sinatrarb.com/

require 'sinatra'

class HelloWorld < Sinatra::Base

  1000.times do |index|
    get "/#{index}" do
      'hello world sinatra'
    end
  end

  get '/' do
    'hello world sinatra'
  end
end

run HelloWorld
