require 'rack/app'
class RackApp < Rack::App

  get '/' do
    'hello'
  end

  1000000.times do |index|
    get "/#{index}" do
      'hello'
    end
  end

  1000000.times do |index|
    define_method("endpoint_helper_method_#{index}"){}
  end


end