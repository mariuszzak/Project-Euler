# Problem 22
# https://projecteuler.net/problem=22
#
# Using names.txt (right click and 'Save Link/Target As...'), 
# a 46K text file containing over five-thousand first names, 
# begin by sorting it into alphabetical order. Then working out 
# the alphabetical value for each name, multiply this value by 
# its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical 
# order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, 
# is the 938th name in the list. So, COLIN would 
# obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?


@alphabet = ('A'..'Z').to_a

def calculate_points(name)
  points = 0
  name.split(//).each do |char|
    points += @alphabet.index(char)+1
  end
  points
end

contents = File.read('22.txt')

i = 1
sum = 0
contents.gsub('"', '').split(',').sort.each do |name|
  sum += i*calculate_points(name)
  i += 1
end

puts sum