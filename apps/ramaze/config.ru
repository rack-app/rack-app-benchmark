# Original Code from: https://github.com/luislavena/bench-micro

require "ramaze"

class HelloWorld < Ramaze::Controller

  ENV['EDA'].to_i.times do |index|
    map "/#{index}"
  end

  map "/"

  def index
    "hello world"
  end

end

run Ramaze.core
