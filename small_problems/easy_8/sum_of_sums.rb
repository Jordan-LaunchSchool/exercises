=begin
  - write a method that takes an array
  - have the method return an integer equal to the sums of the sum of each leading subsequence for that array

  - define a method that takes an array
  - create an empty result array
    - iterate over the input arrays index
      - add the range of 0 to the current interations index to the result array as an array itself



=end

def sum_of_sums(input_array)
  result_array = []
  input_array.each_index do |index|
    result_array << input_array[0..index].sum
  end
  result_array.sum
end


sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35