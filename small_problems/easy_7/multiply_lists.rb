
=begin
  - write a method that takes two arrays as arguments both containing a list of numbers
  - have the method return a new array that contains the product of each pair of numbers from the arguments of the same index

  - define a method that takes two arrays as arguments
  - create an empty result array
  - iterate over the first array with index
    - on each iteration, multiply the current iteration with the same indexed element of the second array
    and push the result to the result array

  - return the result array

=end

# def multiply_list(array_1, array_2)
#   result = []
#   array_1.each_index do |index|
#     result << array_1[index] * array_2[index]
#   end
#   result
# end

def multiply_list(array_1, array_2)
  array_1.zip(array_2) {|sub_array| sub_array}
end

p multiply_list([3, 5, 7], [9, 10, 11]) 