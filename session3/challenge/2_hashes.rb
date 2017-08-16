# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(number)
  to_return = {}
  all = (1..number).to_a #create array contain from 1 to argument
  all.each do | current_num |
    next if current_num.even?
    to_return[current_num] = all.select {|i| i.even? && i < current_num } #assign the even number that are less current number
  end
  return to_return
end

puts staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}
