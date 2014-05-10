# Problem 40
# https://projecteuler.net/problem=40

# An irrational decimal fraction is created 
# by concatenating the positive integers:

# 0.123456789101112131415161718192021...

# It can be seen that the 12th digit of the 
# fractional part is 1.

# If dn represents the nth digit of the fractional part, 
# find the value of the following expression.

# d1 × d10 × d100 × d1000 × d10000 × d100000 × d1000000

require 'benchmark'

puts Benchmark.measure {

  i = 1
  size = 0
  product = 1
  wanted = [1,10,100,1_000,10_000,100_000,1_000_000]
  loop do
    i.to_s.split(//).each do |j|
      size += 1
      if wanted.first == size
        product *= j.to_i
        wanted.shift
      end
    end
    break if size >= 1_000_000
    i += 1
  end

  puts product

}