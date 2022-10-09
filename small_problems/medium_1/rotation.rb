=begin
  - write a method that takes an array
  - have the method rotate the first element to the end of the array
  - the original array should not be modified


  - define a method that takes an array
  - have the last element of the array equal to array shift of the input array

=end

def rotate_array(input_array)
  result_array = []
  input_array.each_with_index do |element, index|
    result_array << element unless index == 0
  end
  result_array << input_array[0]
  result_array
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]  
p x == [1, 2, 3, 4] 