# Original Code from: https://github.com/luislavena/bench-micro

require "brooklyn"

class HelloWorld < Brooklyn::App

  100.times do |index|
    get "/#{index}" do
      "hello world"
    end
  end

  get "/" do
    "hello world"
  end
  
end

run HelloWorld.new