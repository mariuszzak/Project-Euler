# Problem 2
# https://projecteuler.net/problem=2
#
# Each new term in the Fibonacci sequence is generated 
# by adding the previous two terms. By starting with 1 and 2, 
# the first 10 terms will be:
#
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose 
# values do not exceed four million, find 
# the sum of the even-valued terms.

a, b, sum, c = 1, 2, 2, 3
while c < 4_000_000
  sum += c if c.even?
  a, b = b, c
  c = a + b
end

puts sum