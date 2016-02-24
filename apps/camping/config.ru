require 'camping'

Camping.goes :Hello

module Hello::Controllers

  classes = []
  ENV['EDA'].to_i.times do |index|

    new_class = Class.new(R("/#{index}"))
    new_class.class_eval do
      def get
        render :hello
      end
    end

    classes << new_class

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
