# Original Code from: https://github.com/luislavena/bench-micro

require 'rack'
require 'rack/builder'

require "hobbit"

class HelloWorld < Hobbit::Base

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
