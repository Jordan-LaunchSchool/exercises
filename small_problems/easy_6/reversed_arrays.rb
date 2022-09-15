
=begin
	- write a method that takes an array
	- reverse the elements of the array in place (mutate the array passed to the method)
	- the return value should be the same Array object.


	- define a method that takes an array
		-  create a counter for the begining index of the array
		- create a counter for the starting at the last element index of the array
			- begin a loop
				- save the first element to a variable and the last element to a variable
				- make the first element equal to the last element and the last element 
				equal to the first element.
				- increase the begining counter by 1 and the last element counter by -1
				- break the loop if the first counter is eqaul to or larger then half the size
				of the input arrays length.
=end

def reverse!(input_array)
	left_counter = 0
	right_counter = -1

	(input_array.length / 2).times do 
		input_array[left_counter], input_array[right_counter] = input_array[right_counter], input_array[left_counter]
		left_counter += 1
		right_counter -= 1
	end
	input_array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true