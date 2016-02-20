require 'grape'

class API < Grape::API

  100.times do |index|
    get "/#{index}" do
      { hello: "world" }
    end
  end

  get '/' do
    { hello: "world" }
  end
end

run API