# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
  new_string = ""
    each_char.with_index {|char,pos|
      #loop through each character in an string assign current character to temporary variable(char) and it's position to pos
      new_string << char if pos.even?
    }
    return new_string
  end
end

#s = String.new
p "abcdefg".every_other_char  # => "aceg"
#p s.every_other_char("abcdefg")
#p s.every_other_char("")
