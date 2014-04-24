# Problem 9
# https://projecteuler.net/problem=9
#
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

(1..1000).each do |a|
  (1..1000).each do |b|
    if a < b
      sqrt_of_sum_of_products = Math.sqrt(a*a + b*b)
      if sqrt_of_sum_of_products == sqrt_of_sum_of_products.floor
        if a + b + sqrt_of_sum_of_products.floor == 1000
          puts (a * b * sqrt_of_sum_of_products.floor).to_i
          break
        end
      end
    end
  end
end
