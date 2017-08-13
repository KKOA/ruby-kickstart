# Write a function named mod_three which takes an array of numbers,
# and return a new array consisting of their remainder when divided by three.
# Exclude any numbers which are actually dividible by three.
#
# EXAMPLES:
# mod_three [0]  # => []
# mod_three [1]  # => [1]
# mod_three [2]  # => [2]
# mod_three [3]  # => []
# mod_three [4]  # => [1]
# mod_three [5]  # => [2]
# mod_three [6]  # => []
# mod_three [7]  # => [1]
#
# mod_three [0,1,2,3,4,5,6,7] # => [1, 2, 1, 2, 1]
def mod_three (array)
  return array.each_with_index{|value,pos| array[pos] %= 3 }.select{|value| value != 0}
  #loop item through array convert item to remainder of dividing by 3
  #select returns array containing values that not 0.
  # any value with value of 0 is actual divsible by three
end

p mod_three([0,1,2,3,4,5,6,7])
p mod_three [0]  # => []
p mod_three [1]  # => [1]
p mod_three [2]  # => [2]
p mod_three [3]  # => []
p mod_three [4]  # => [1]
p mod_three [5]  # => [2]
p mod_three [6]  # => []
p mod_three [7]  # => [1]
