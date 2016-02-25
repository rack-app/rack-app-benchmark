# Cuba project home: http://cuba.is/
#
# Original Code from: https://github.com/luislavena/bench-micro
# 

require "cuba"

HelloWorld = Cuba.new do

  ENV['EDA'].to_i.times do |index|
    on "/#{index}" do
      res.write "hello world"
    end
  end

  on default do
    res.write "hello world"
  end

  on '/users/:user_id' do
    res.write "hello world"
  end

end

run HelloWorld

