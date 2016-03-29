require 'nyny'
class App < NYNY::App

  ENV['EDA'].to_i.times do |index|
    get "/#{index}" do
      'Hello world!'
    end
  end
  
  get '/' do
    'Hello world!'
  end

  get '/users/:user_id' do
    'dynamic'
  end

end

# App.run!
run App.new