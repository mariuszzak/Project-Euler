# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly 
# divisible by all of the numbers from 1 to 20?

i = 1
loop do
  if (1..20).all? { |j| (i % j).zero? }
    puts i
    break
  end
  i+=1
end