=begin
	- write a method that takes an array of strings 
	- have the method return an array of the same string value except without vowels

	- define the method
		- create a vowel array
			- iterate over each element to transform it
				- iterate over each character, if the character is not in the vowels array, add it to the element


			remove_vowels([ABC, AEIOU, XYZ]) == ['BC', '', 'XYZ']
			
=end

# def remove_vowels(input_array)
# 	vowels = %w(a e i o u A E I O U)
# 	result_array = []
# 	input_array.each do |element|
# 		element_string = ''
# 		element.each_char do |char|
# 			element_string << char unless vowels.include?(char)
# 		end
# 		result_array << element_string
# 	end
# 	result_array
# end

def remove_vowels(strings)
	vowels = 'aeiouAEIOU'
	strings.map do |string|
		string.delete(vowels)
	end
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']