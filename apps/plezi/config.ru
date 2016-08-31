# finish with `exit` if running within `irb`
require 'plezi'

class HelloWorld
  def index
    'Hello, World!'
  end
end

class Dynamic
  def show
    params['id']
  end
end

ENV['EDA'].to_i.times do |i|
  Plezi.route "/test/route/endpoints/#{i}", HelloWorld
end

Plezi.route '/dynamic/(:id)', Dynamic
Plezi.route '/', HelloWorld

run Plezi.app
