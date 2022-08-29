# odd_lists.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that returns an Array
	- the array is to contrain every other element
	- the value in the returned list are to be the 1st, 3rd, 5th
	position of the array 

  Input: array

  Output: array


=> EXAMPLES <=
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

=> DATA STRUCTURES <=

=> ALGORITHM <=
- define a method that takes an array as an argument
- save an empty array to a variable
- iterate over the method argument array with index, if the index
is even, add the current iteration to the new empty array
- return the new array

=> CODE <=

=end

def oddities(array)
	result_array = []

	array.each_index do |index|
		result_array << array[index] if index.even?
	end
	result_array
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []