require 'roda'

class App < Roda
  route do |r|
    ENV['EDA'].to_i.times do |index|
      r.get(index.to_s) do
        'Hello World'
      end
    end

    r.root do
      'Hello Roda!'
    end
  end
end

run App.freeze.app
