# Problem 10
# https://projecteuler.net/problem=10
# 
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.
# 

require 'benchmark'

def is_prime?(number)
  return false if number <= 1
  (2..Math.sqrt(number).floor).each do |i|
    return false if (number % i).zero?
  end
  return true
end

def sum_of_primes_below(num)
  i = 3
  sum = 2
  while true
    if i >= num
      return sum
    end
    sum +=i if is_prime?(i)
    i += 2
  end
end

puts Benchmark.measure { puts sum_of_primes_below(2_000_000) }