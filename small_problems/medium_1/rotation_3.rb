=begin
  - write a method that takes an 
  - 
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

def max_rotation(input_integer)
  counter = input_integer.to_s.size
  integer_to_be_rotated = input_integer
  rotate_rightmost_digits(integer_to_be_rotated, counter)
  loop do 
    integer_to_be_rotated = rotate_rightmost_digits(integer_to_be_rotated, counter)
    counter -= 1
    break if counter < 2
  end
  integer_to_be_rotated
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

=begin
  - 735291, 352917, 329175, 321759, 321597, 321579
  - 735291 (6), 352917 (5), 329175 (4), 321759 (3), 321597 (2), 
=end