require_relative "almost_sinatra"

ENV['EDA'].to_i.times do |index|
  get "/#{index}" do
    'hello world almost_sinatra'
  end
end

get '/' do
  'hello world almost_sinatra'
end

get '/users/:user_id' do
  'dynamic'
end

run OPTIONS[:app]
