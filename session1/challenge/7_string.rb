# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  characters = ""
  (0...string.length).each do |pos|
    characters << string[pos+1] if(string[pos].downcase == 'r' && pos != (string.length() - 1)) # convert character lowercase using downcase
    #check that this is not the last character in the string and current letter = r
   end
  return characters
end

puts pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
puts pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
puts pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"
