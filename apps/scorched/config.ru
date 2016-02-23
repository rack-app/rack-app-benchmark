# Original Code from: https://github.com/luislavena/bench-micro

require "scorched"

class HelloWorld < Scorched::Controller

  (ENDPOINT_DECLARATION_AMOUNT || ENV['EDA']).times do |index|
    get "/#{index}" do
      "hello world"
    end
  end

  get "/" do
    "hello world"
  end

end

run HelloWorld
