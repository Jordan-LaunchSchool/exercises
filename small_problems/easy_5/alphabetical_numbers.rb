=begin
	- write a method that takes an array of integers between 0 - 19.
	- have the method return an array of those integers sorted based on the english words for each number.

	ALGO
	- create a hash that each number is so that the number is the key and its english word is the value
	- define a method that takes an array of integers
		- iterate over the array and return an array containing the english word of each letter
		- sort english word array alphabetically.
		
		- iterate over the english word array and transform the element back into its integer value
		- return the number array
=end
ENGLISH_NUMBERS = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen
 fourteen fifteen sixteen seventeen eighteen nineteen)


# ENGLISH_NUMBER_HASH = {}
# ENGLISH_NUMBERS.each_with_index do |word, index|
# 	ENGLISH_NUMBER_HASH[index] = word
# end


# def alphabetic_number_sort(input_array)
# 	english_number_array = input_array.map do |number|
# 		ENGLISH_NUMBER_HASH[number]
# 	end
# 	english_number_array.sort.map do |word|
# 		ENGLISH_NUMBER_HASH.key(word)
# 	end
# end

def alphabetic_number_sort(numbers)
	numbers.sort_by { |number| ENGLISH_NUMBERS[number] }
end


alphabetic_number_sort([1, 2, 3, 4, 5])