# Original Code from: https://github.com/luislavena/bench-micro

require "nancy"

class HelloWorld < Nancy::Base

  1000.times do |index|
    get "/#{index}" do
      "hello world"
    end
  end

  get "/" do
    "hello world"
  end

end

run HelloWorld
