
=begin
   - write a method that takes a string
   - have the method return a list off all substrings of a string that start at the beginning of the original string. 
     - the return value should be arranged in shortest to longest string


  - define a method that takes a string
  - create an empty result array
  - iterate over that characters index
    - from the range of 0 to the current index, add the result to the result array

  - return the result array 
=end

def leading_substrings(input_string)
  result_array = []

  input_string.chars.each_index do |index|
    result_array << input_string[0..index]
  end
  result_array
end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']