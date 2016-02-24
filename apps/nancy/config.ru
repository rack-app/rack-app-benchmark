# Original Code from: https://github.com/luislavena/bench-micro

require "nancy"

class HelloWorld < Nancy::Base

  ENV['EDA'].to_i.times do |index|
    get "/#{index}" do
      "hello world"
    end
  end

  get "/" do
    "hello world"
  end

end

run HelloWorld
