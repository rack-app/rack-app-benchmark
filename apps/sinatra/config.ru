# Sinatra project home: http://www.sinatrarb.com/

require 'sinatra'

class HelloWorld < Sinatra::Base

  (ENDPOINT_DECLARATION_AMOUNT || ENV['EDA']).times do |index|
    get "/#{index}" do
      'hello world sinatra'
    end
  end

  get '/' do
    'hello world sinatra'
  end
end

run HelloWorld
