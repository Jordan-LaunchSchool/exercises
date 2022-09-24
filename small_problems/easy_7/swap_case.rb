=begin
  - write a method that takes a string
  - have the method return a new string in which every uppercase letter is replaced by its 
  lower case version and every lowercase letter by its uppercase version.
  - all other chracter should be unchanged

  EXAMPLES:
  swapcase('CamelCase') == 'cAMELcASE'
  swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

  ALGO:
  - define a lowercase character array
  - define an uppercase character array

  - write a method that takes a string
  - create an empty result string
    - iterate over each character of the string
    - if the current iteration is included in the lowercharacters array
      - push the result of the character to upcase to the result string
    - if the current iteration is include in the uppercase array
      - push the result of the character to downcase to the result array
    - otherwise, push the the character to the result string

  - return the result string


=end

LOWER_CASE_ALPHABET = Array('a'..'z')
UPPER_CASE_ALPHABET = Array('A'..'Z')

def swapcase(input_string)
  result_string = ''

  input_string.each_char do |char|
    if LOWER_CASE_ALPHABET.include?(char)
      result_string << char.upcase
    elsif UPPER_CASE_ALPHABET.include?(char)
      result_string << char.downcase
    else
      result_string << char
    end
  end
  result_string
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'