=begin
	- write a method that takes a string of words
	- have the method return a hash that has the count of letters in the word as the key
	and the number of occurences of that size word as the value

	*SCRATCH PAD*
		- use an alphabet constant
		- create an array where the elements are the number of letters in the word and then iterate over
		that array to create the hash

	*ALGO*
	 - define a method that takes a string
	 	- split the string into an array
			- iterate over the array
				- create a letter counter == 0
				- iterate over each character, if the character is included in the alphabet
				add 1 to the letter counter
				- return the letter counter number
			- save this new array as an array with the letter counter sum as the elements

		- define a method that takes a string
			- send the string to the number of letters to an array converter above
			- create an empty hash with the default of zero
			- iterate over the returned number array making each iteration a key
			and adding +1 to the value
=end

# ALPHABET = Array('a'..'z')

# def words_to_letter_count(input_string)
# 	word_sizes_array = []
# 	input_string.downcase.split.each do |word|
# 		letter_counter = 0
# 		word.each_char do |char|
# 			letter_counter += 1 if ALPHABET.include?(char)
# 		end
# 		word_sizes_array << letter_counter
# 	end
# 	word_sizes_array
# end

# def word_sizes(input_string)
# 	result = Hash.new(0)
# 	words_to_letter_count(input_string).each do |number|
# 		result[number] += 1
# 	end
# 	result
# end

def word_sizes(words_string)
	counts = Hash.new(0)
	words_string.split.each do |word|
		clean_word = word.delete('^A-Za-z')
		counts[clean_word.size] += 1
	end
	counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}


