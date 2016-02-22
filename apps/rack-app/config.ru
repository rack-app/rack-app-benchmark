require 'rack/app' 

class App < Rack::App

  1000.times do |index|
    get "/#{index}" do
      'hello world Rack::App'
    end
  end

  get '/' do 
    'hello world Rack::App'
  end

end 

run App
