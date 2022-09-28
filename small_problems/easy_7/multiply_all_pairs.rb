
=begin
  - write a method that takes two array arguments containing a list of numbers
  - have the method return a new array that contains the product of every pair of numbers
  the can be formed between the elements of the two arrays. 
  - the results should be sorted by increasing value

  - define a method that takes two arguments
  - create an empty result array
  - iterate over the first array
    - iterate over the second array
      - multiply the current iteration by that of the current iteration of the first array and 
      push the result to the result array

  - return the result array sorted in increasing value

=end

def multiply_all_pairs(array_1, array_2)
  result = []

  array_1.each do |element_1|
    array_2.each do |element_2|
      result << element_1 * element_2
    end
  end

  result.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]