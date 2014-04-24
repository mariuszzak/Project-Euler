# Problem 4
# https://projecteuler.net/problem=4

# A palindromic number reads the same both ways. The largest
# palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindromic?(num)
  num = num.to_s
  size = num.size
  return true if num[0, size/2.floor] == num[-size/2.floor+(size.even? ? 0 : 1), size/2.floor].reverse
  return false  
end

max = nil
999.times do |i|
  i+=1
  999.times do |j|
    j+=1
    product = i*j
    max = product if is_palindromic?(product) and max.to_i < product
  end
end

puts max