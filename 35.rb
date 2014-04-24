# Problem 35
# https://projecteuler.net/problem=35

# The number, 197, is called a circular prime because 
# all rotations of the digits: 197, 971, and 719, 
# are themselves prime.

# There are thirteen such primes below 100: 
# 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?

# require 'set'
# require 'benchmark'

# def primes n
#   p = {}
#   (2..n).each { |i| p[i] = true}
#   (2..(Math.sqrt(n).ceil)).each do |i|
#     next if p.key?(i) and !p[i]
#     (2..(n/i)).each do |j|
#       p[i*j] = false
#     end
#   end
#   p.select { |k, v| v }.keys
# end

# def circular? n
#   (1...n.to_s.size).all? do
#     n = n.to_s[1..-1]+n.to_s[0,1]
#     @p.include? n.to_i
#   end
# end

# puts Benchmark.measure {

# @p = primes(1_000_000)
#   puts @p.size.inspect
#   #puts @p.select{|n| circular? n}.size
# }

require 'set'
require 'benchmark'

def primes n
  p = Array.new(n){|i| i}
  (2..(Math.sqrt(n).ceil)).each do |i|
    next if !p[i]
    (2..(n/i)).each do |j|
      p[i*j] = false
    end
  end
  p.select{|n| n}[2..-1]
end

def circular? n
  (1...n.to_s.size).all? do
    n = n.to_s[1..-1]+n.to_s[0,1]
    @p.include? n.to_i
  end
end

puts Benchmark.measure {
  @p = Set.new(primes(1_000_000))

  puts @p.size.inspect
}