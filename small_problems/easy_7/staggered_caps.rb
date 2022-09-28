=begin
  - write a method that takes a string
  - have the method return a new string
  - the new string must be staggered capitalization scheme which every other character
  is capitalized. 
  - characters that are not letters should not be changed. 

  - create an alphabet array
  - define a method that takes a string
  - create an empty result string
  - iterate over each character with its index
    - if the index is odd, and it is included in the the alphabet array
      - push a capitalised version of the character to the result string
    - otherwise, push the letter to the result string

    - return the result string

=end

# ALPHABET = Array('a'..'z') + Array('A'..'Z')

# def staggered_case(input_string)
#   result_string = ''
#   input_string.each_char.with_index do |char, index|
#     if ALPHABET.include?(char) && index.even?
#       result_string << char.upcase
#     else
#       result_string << char.downcase
#     end
#   end
#   result_string
# end

def staggered_case(input_string)
  result = ''
  need_upper = true
  input_string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

