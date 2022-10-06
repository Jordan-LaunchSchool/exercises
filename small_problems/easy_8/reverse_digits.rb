=begin
  - write a method that takes a positive integer as an argument
  -  have the method return that number with its digits revered


  - define a method that takes an integer
  - convert the integer to a string
  - reverse the string
  - convert the string to an integer
  - return the integer

=end


def reversed_number(input_integer)
  input_integer.to_s.reverse.to_i

end


p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1