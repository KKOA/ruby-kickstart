# remember, you can test this file with
#   $ rake 1:3


# Given a number, n, return 10 if it is even, and 20 if it is odd
#
# ten_twenty(5) # => 20
# ten_twenty(6) # => 10

def ten_twenty(n)
 return (n.even?)? 10 : 20 #even? returns true if the integer is an even number
end

puts(ten_twenty(5))
puts(ten_twenty(6))
