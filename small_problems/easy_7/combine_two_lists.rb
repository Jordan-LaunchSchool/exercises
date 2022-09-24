=begin
 - write a method that takes two arrays 
 - have the method return an array that contains all the elements with the elements alternating

 - define the method that takes two arrays as arguments
 - create an empty result array
 - iterate over the first array with both element and index
    - add the first element to the result array
    - add the first element to of the second array to the result array using the index number to access the element

  - return the result array

=end


# def interleave(array_1, array_2)
#   result = []

#   array_1.each_with_index do |element, index|
#     result << element << array_2[index]
#   end

#   result
# end

def interleave(array_1, array_2)
  array_1.zip(array_2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']