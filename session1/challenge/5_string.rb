# Given a string, replace every instance of sad to happy
#
# add_more_ruby("The clowns were sad.")         # => "The clowns were happy."
# add_more_ruby("The sad dad said sad stuff.")  # => "The happy dad said happy stuff."
# add_more_ruby("Sad times are ahead!")         # => "Happy times are ahead!"

def add_more_ruby(string)
	string.gsub!("sad","happy") #gsub replace all instances of first argument in string with second argument.Think of replace all.
	return string.gsub("Sad","Happy")
end

puts(add_more_ruby("The clowns were sad."))
puts(add_more_ruby("The sad dad said sad stuff."))
puts(add_more_ruby("Sad times are ahead!"))
