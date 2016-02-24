require 'grape'

class API < Grape::API

  ENV['EDA'].to_i.times do |index|
    get "/#{index}" do
      { hello: "world" }
    end
  end

  get '/' do
    { hello: "world" }
  end
end

run API