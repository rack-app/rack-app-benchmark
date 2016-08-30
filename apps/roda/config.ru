require 'roda'

Roda.plugin(:multi_route)
Roda.route do |r|
  r.multi_route
  r.get do

    ENV['EDA'].to_i.times do |index|
      r.is(index.to_s) do
        index.to_s
      end
    end

    r.root do
      'Hello Roda!'
    end

  end
end

run Roda.freeze.app
