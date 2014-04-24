#!/usr/local/bin/ruby -w
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?

require 'benchmark'

def is_prime?(number)
  return false if number <= 1
  (2..Math.sqrt(number).floor).each do |i|
    return false if (number % i).zero?
  end
  return true
end

def prime(num)
  primes = 1
  i = 3
  while true
    primes +=1 if is_prime?(i)
    if primes == num
      return i 
    end
    i += 2
  end
end

puts Benchmark.measure { puts prime(10001) }