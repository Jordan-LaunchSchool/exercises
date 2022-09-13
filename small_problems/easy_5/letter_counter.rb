=begin
	- create a method that takes a string
	- have the method return a hash that counts the number of different sized words

	**SCRATCH PAD**
	- need to know the length of each word
	- need to create a key for each words length
	- need to create a value for how many times that size word occurs in the string
	- special characters are included in the size of the word

	**ALGO**
	- write a method that takes a string
		- create an empty results hash
		- split this string into words seperated by a space
		- iterate over the array, make the length of the current iteration a key in the hash
		and 1 as the value
		- if the current iteration already exists as a key, add an additional 1 to its value.
		- return the hash

=end

def word_sizes(input_string)
	results_hash = Hash.new(0)
	input_string.split.each do |word|
		results_hash[word.length] += 1
	end
	results_hash

end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}