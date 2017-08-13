# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false


def got_three?(elements)
  elementsLen = elements.length
  return false if elementsLen < 3 # cannot contain 3 if length less than 3
  elements.each_with_index do |element,pos|
    return false if pos == (elementsLen-2) # prevents the line below from looking for a value outside the length of the array
    return true if (element == elements[pos+1] && element == elements[pos+2])
  end
end


p got_three? [1, 2, 2, 2, 3]  # => true
p
p got_three? ['a', 'a', 'b']  # => false
p
p got_three? ['a', 'a', 'a']  # => true
p
p got_three? [1, 2, 1, 1]     # => false
