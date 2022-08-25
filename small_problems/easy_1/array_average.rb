=begin
=> SCRATCH PAD <=
  array.sum
  array.count returns the number of elements in an array


=> PROBLEM <=
  - write a method that takes an array containing integers
  - have the method return the average of all numbers in the array
  
  Input: array of integers

  Output: single integer, average of array integers

=> EXAMPLES <=
  puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
  puts average([1, 5, 87, 45, 8, 8]) == 25
  puts average([9, 47, 23, 95, 16, 52]) == 40

=> DATA STRUCTURES <=


=> ALGORITHM <=
  - write a method that takes one argument, an array of integers
  - find the sum of all elements
  - divide the sum by the number of elements


=> CODE <=

=end

def average(array)
  array.sum / array.count 
end

puts average([1, 6]) == 3 
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
