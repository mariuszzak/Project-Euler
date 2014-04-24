# Problem 6
# https://projecteuler.net/problem=6
#
# The sum of the squares of the first ten natural numbers is,
# 
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# 
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the 
# first ten natural numbers
# and the square of the sum is 3025 − 385 = 2640.
# 
# Find the difference between the sum of the squares of the 
# first one hundred natural numbers
# and the square of the sum.

def square_of_the_sum(num=10)
  sum = 0
  (1..num).each do |i|
    sum += i
  end
  sum **= 2
end

def sum_of_the_squares(num=10)
  sum = 0
  (1..num).each do |i|
    sum += i **= 2
  end
  sum
end

puts square_of_the_sum(100)-sum_of_the_squares(100)
