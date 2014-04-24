# Problem 48
# https://projecteuler.net/problem=48

# The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

# Find the last ten digits of the series, 
# 11 + 22 + 33 + ... + 10001000.

sum = 0
(1..1000).each do |i|
  sum += i ** i
end

puts sum.to_s[-10,10]