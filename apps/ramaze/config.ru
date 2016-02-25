# Original Code from: https://github.com/luislavena/bench-micro

require "ramaze"

ENV['EDA'].to_i.times do |index|
  eval <<-RUBY

    class HelloWorld#{index} < Ramaze::Controller

      map "/#{index}"

      def index
        "hello world"
      end

    end

  RUBY
end

class HelloWorldDynamic < Ramaze::Controller

  map "/users/:user_id"

  def index
    "hello world"
  end

end

class HelloWorld < Ramaze::Controller

  map "/"

  def index
    "hello world"
  end

end

run Ramaze.core
