require 'roda'

Roda.plugin(:multi_route)

ENV['EDA'].to_i.times do |index|
  i = index.to_s
  Roda.route(i) do |r|
    r.get true do
      'Hello World'
    end
  end
end

Roda.route do |r|
  r.multi_route

  r.root do
    'Hello Roda!'
  end
end

run Roda.freeze.app
