# Problem 36
# https://projecteuler.net/problem=36

# The decimal number, 585 = 10010010012 (binary), 
# is palindromic in both bases.

# Find the sum of all numbers, less than one million, 
# which are palindromic in base 10 and base 2.

# (Please note that the palindromic number, in either 
#   base, may not include leading zeros.)


def is_palindromic?(num)
  num = num.to_s
  size = num.size
  if num[0, size/2.floor] == num[-size/2.floor+(size.even? ? 0 : 1), size/2.floor].reverse
    return true
  else
    return false  
  end
end

palindromes = []
(1..1_000_000).each do |i|
  palindromes << i if is_palindromic?(i) and is_palindromic?(i.to_s(2))
end

puts palindromes.inject { |sum, n| sum + n}