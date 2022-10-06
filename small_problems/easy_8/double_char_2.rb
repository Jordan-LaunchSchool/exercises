
=begin
  - write a method that takes a string
  - have the method return a new string in which every consonant is doubled
  - vowels, digits and punctuation, whitespace should not be doubled.

  - create an consonants array

  - define a method that takes a string
  - create an empty result string
  - iterate over each character of the string
  - if the character is included in the constonants array, add the 2x the character to the result array
  - otherwise, add the character to the array

=end



CONSONANTS = %w( b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(input_string)
  result_string = ''
  input_string.each_char do |char|
    if CONSONANTS.include?(char.downcase)
      result_string << char << char
    else
      result_string << char
    end
  end
  result_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""