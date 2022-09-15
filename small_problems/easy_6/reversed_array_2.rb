
=begin
	- write a method that takes an array
	- have the method reverse the order of the array but do not modify the original list

	[1,2,3,4]) == [4,3,2,1]

	- define a method that takes an array
		- make an empty result array
		- iterate over the input array, 
			- push each iteration to the beginning of the result array
		- return the result array
=end

def reverse(input_array)
	result = []
	input_array.each do |element|
		result.prepend(element)
	end
	result
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []  

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]  