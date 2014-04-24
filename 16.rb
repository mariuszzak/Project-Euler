# Problem 16
# https://projecteuler.net/problem=16
#
# 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# 
# What is the sum of the digits of the number 21000?


puts (2 ** 1000).to_s.split(//).inject { |sum, n| sum.to_i + n.to_i } 