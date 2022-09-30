=begin
  - write a method that takes an integer
  - if the left side digits are the same as the right side digits the number is 
    considered a double
  - For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.
  - have the method return 2 times the input integer if the number is not considered a double
  - havbe the method reuturn the input integer as is if the number IS a double

  - define a double? method that takes an integer and checks if the number is a double
    - convert the number into a string and then into an array
    - split the array in half into two seperate array
    - check if the first half of the array is equal the second half of the number
    - if it mathces the double criteria return true
    - otherwise return false

  - define a twice method that takes an integer
  - if the input integer is a double?
    - return the integer
  - otherwise return the input integer, multiplied by 2

=end

def double?(input_integer)
  input_integer_to_s_array = input_integer.to_s.chars
  split_range = input_integer_to_s_array.size / 2
  if input_integer_to_s_array.size.even?
    input_integer_to_s_array[(split_range)..-1] == input_integer_to_s_array[0..(split_range - 1)]
  else
    false
  end
end


def twice(input_integer)
  double?(input_integer) ? input_integer : input_integer * 2
end



p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10