# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  characters =""
  (0...string.length).each do |pos| #loop from 0 to (length string - 1) '...' excludes upper limit value from the range
    characters << string[pos] if (return_odds && pos % 2 != 0) #<< to add element to end of string
    characters << string[pos] if (return_odds == false && pos % 2 == 0)
  end
  return characters
end

puts odds_and_evens("abcdefg",true)    # => "bdf"
puts odds_and_evens("abcdefg",false)    # => "aceg"
