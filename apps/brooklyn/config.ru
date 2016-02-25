# Original Code from: https://github.com/luislavena/bench-micro

require "brooklyn"

class HelloWorld < Brooklyn::App

  ENV['EDA'].to_i.times do |index|
    get "/#{index}" do
      "hello world"
    end
  end

  get "/" do
    "hello world"
  end

  get '/users/:user_id' do
    "d"
  end
  
end

run HelloWorld.new