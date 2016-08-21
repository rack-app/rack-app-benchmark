require 'roda'

class App < Roda
  plugin :multi_route

  ENV['EDA'].to_i.times do |index|
    i = index.to_s
    route(i) do |r|
      r.get true do
        'Hello World'
      end
    end
  end
  
  route do |r|
    r.multi_route

    r.root do
      'Hello Roda!'
    end
  end
end

run App.freeze.app
