# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(elements)
  prev= ''
  count = 1
  pos = 0
  elementsLen = elements.length
  while pos < elementsLen
    if(pos == 0)
      prev = elements[pos]
    else
      if(count == 3)
        break
      elsif(prev == elements[pos])
        count += 1
      else
        prev = elements[pos]
        count = 1
      end
    end
    pos += 1
  end
  return (count == 3)? true :false
end

p got_three? [1, 2, 2, 2, 3]  # => true
p
p got_three? ['a', 'a', 'b']  # => false
p
p got_three? ['a', 'a', 'a']  # => true
p
p got_three? [1, 2, 1, 1]     # => false
