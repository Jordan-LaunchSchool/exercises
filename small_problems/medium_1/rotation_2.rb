=begin
  - write a method that takes two integers
  - have the method roate the 'n' digits of a given number
  - the first number is the given number that contains which number is to be rotated
  - the second number 
=end


def rotate_array(input_array)
  input_array[1..-1] + [input_array[0]]
end


def rotate_rightmost_digits(input_integer, n)
  integer_array = input_integer.to_s.chars
  digits_to_rotate = integer_array.slice!(-n..-1)
  result = integer_array + rotate_array(digits_to_rotate)
  result.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917