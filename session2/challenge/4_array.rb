# Write a method named get_squares that takes an array of numbers
# and returns a sorted array containing only the numbers whose square is also in the array
#
# get_squares [9]                      # => []
# get_squares [9,3]                    # => [3]
# get_squares [9,3,81]                 # => [3, 9]
# get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]

# This time you will have to define the method, it's called: get_squares

def get_squares(numbers)
  sqrt_roots=[]
  # Caculate square roots of each and store an array
  numbers.each do|number|
    sqrt_roots  << (number ** 0.5)# √number is equivalent to number**0.5
  end
  numbers.select { |number| sqrt_roots.include? number }.sort # return array sort array of the number common to both
end

p get_squares [9]                      # => []
p get_squares [9,3]                    # => [3]
p get_squares [9,3,81]                 # => [3, 9]
p get_squares [25, 4, 9, 6, 50, 16, 5] # => [4, 5]
