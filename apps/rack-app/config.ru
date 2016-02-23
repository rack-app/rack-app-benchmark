require 'rack/app' 

class App < Rack::App

  (ENDPOINT_DECLARATION_AMOUNT || ENV['EDA']).times do |index|
    get "/#{index}" do
      'hello world Rack::App'
    end
  end

  get '/' do 
    'hello world Rack::App'
  end

end 

run App
