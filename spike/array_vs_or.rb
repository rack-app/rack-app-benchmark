require 'benchmark'

Benchmark.bm do |x|

  quantity = 50000000

  array_of_fixnum = [false, false, false, true]
  x.report 'Array#each' do
    quantity.times do
      array_of_fixnum.each { |e| e }
    end
  end

  a, b, c, d = false, false, false, true

  x.report 'or' do
    quantity.times do
      a || b || c || d
    end
  end

end

