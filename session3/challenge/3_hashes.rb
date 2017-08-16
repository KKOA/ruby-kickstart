# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

def word_count(sentence)
  freq ={}
  freq.default = 0 # set default value for the hash. Any key that does not have value assigned will be set to that value
  sentence.downcase.split(" ").each do |word|
    freq[word] += 1 #increment the count if the key exists
  end
  return freq
end
