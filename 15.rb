# Problem 15
# https://projecteuler.net/problem=15

# Starting in the top left corner of a 2×2 grid, 
# and only being able to move to the right and down, 
# there are exactly 6 routes to the bottom right corner.


# How many such routes are there through a 20×20 grid?

size = 20
def sum_pairs_of_numbers(array)
  new_array = []
  (array.size-1).times do |i|
    new_array << array[i]+array[i+1]
  end
  new_array
end

movements = []
(size*2).times do |i|
  movements = sum_pairs_of_numbers(movements)
  movements.unshift(1)
  movements.push(1)
end

puts movements[size]