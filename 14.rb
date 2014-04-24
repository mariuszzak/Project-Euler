# Problem 14
# https://projecteuler.net/problem=14
# 
# The following iterative sequence is defined for the set of positive integers:
# 
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) 
# contains 10 terms. Although it has not been proved yet (Collatz Problem), 
# it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# 
# NOTE: Once the chain starts the terms are allowed to go above one million.
# 
require 'benchmark'

puts Benchmark.measure {

  max = 0
  starting_number = 0

  (1..1_000_000).each do |i|
    next if i.even?

    size_of_chain = 1
    j = i
    while j != 1 do
      if j.even?
        j = j/2 
      else
        j = j*3+1
      end
      size_of_chain += 1
    end

    if size_of_chain > max
      max = size_of_chain 
      starting_number = i
    end
  end

  puts 'Najdluzsza dlugosc lancucha to ' + max.to_s
  puts 'zaczynajac od liczby ' + starting_number.to_s

}