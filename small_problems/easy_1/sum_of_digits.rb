=begin
=> SCRATCH PAD <=

=> PROBLEM <=
 - write a method that takes a positive integer
 - have the method return the sum of the digits
  
  Input: integer

  Output: integer


=> EXAMPLES <=
  puts sum(23) == 5
  puts sum(496) == 19
  puts sum(123_456_789) == 45


=> DATA STRUCTURES <=
  - integer
  - convert integer to array of the integers digits
  - convert result string to integer

=> ALGORITHM <=
  - write a method that takes an integer
  - create an empty array named result
  - convert the integer to string and iterate over the string
    - convert each character to an integer and push it to the result array
  - return the sum of the result array

=> CODE <=

=end

def sum(input)
  result = []

  input.to_s.each_char { |number| result << number.to_i }

  result.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

