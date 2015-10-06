require 'grape'

class GrapeAPP < Grape::API

  get '/' do
    'hello'
  end

  CUSTOM_ENDPOINT_NUMBER.times do |index|

    get "/#{index}" do
      'hello'
    end

  end

end