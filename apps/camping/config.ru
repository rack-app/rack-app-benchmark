require 'camping'

Camping.goes :Hello

module Hello::Controllers

  (ENDPOINT_DECLARATION_AMOUNT || ENV['EDA']).times do |index|

    eval <<-RUBY
      class Endpoint#{index} < R '/#{index}'
       def get
          render :hello
       end
      end
    RUBY

  end

  class Index < R '/'
     def get
        render :hello
     end
  end

end

module Hello::Views
  def hello
     p  "hello world"
  end
end

run Hello
