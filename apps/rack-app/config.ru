require 'rack/app' 

class App < Rack::App

  ENV['EDA'].to_i.times do |index|
    get "/#{index}" do
      'hello world Rack::App'
    end
  end

  desc 'example dynamic endpoint' 
  get '/users/:user_id' do
    'hello world Rack::App'
  end

  desc 'example static endpoint' 
  get '/' do 
    'hello world Rack::App'
  end

end 

run App
