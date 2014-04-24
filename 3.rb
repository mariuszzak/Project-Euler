# Problem 3
# https://projecteuler.net/problem=3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143

def is_prime?(number)
  return false if number <= 1
  (2..number).to_a.each do |i|
    return false if (number % i).zero? and i != 1 and number != i 
  end
  return true
end

def prime_factors(number)
  prime_factors = []
  while number > 1 do
    number.times do |i|
      i += 1
      if is_prime?(i) and (number % i).zero? or number == i
        number = number/i
        prime_factors << i
        break
      end
    end
  end
  return prime_factors
end

puts prime_factors(600851475143).max
