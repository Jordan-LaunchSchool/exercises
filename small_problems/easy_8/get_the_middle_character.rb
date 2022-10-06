=begin
  - write a method that takes a string
  - have the method return the middle character or character of the argument
  - if the argument has an odd length, you should return exactly one character
  - if the argument has an even length, you should return exactly two characters

    - write a method that takes a string
    - create a return string
    - if the string length is odd, 
      - find the middle index of the string (divide string length by 2 and minus 1)
    - if the string legth is even
      - find the middle index of the string.
      - add both characters to the result string using middle index + 1

    - return the selected characters
=end


def center_of(input_string)
  
  center = (input_string.length / 2)
  if input_string.length.even?
    input_string[center - 1] + input_string[center]
  else
    input_string[center]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'