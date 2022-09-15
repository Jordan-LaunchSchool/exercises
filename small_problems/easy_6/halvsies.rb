
=begin
 - write a method that takes an array as an argument
 - have the method return 2 arrays, (nested), that cotain the first half
	and second half of the original array
	- if the original array contains an odd number of elements, the middle element should be places in the
		first half of the array

	- define the halvsies method
	 - create a result array cointaing 2 empty arrays
	 - create a count equal to -1
	 - create a loop for the length of half with input array
		- begining at the end of the halfway array, delete the current iteration and add it to the 
		second nested array. pop or shift?
		- minus -1 off the counter

		- create a counter equal to 1
		- create a loop for the remaining length of the array
		- iterate over the remaining array adding each element to the first nested array
=end

# def halvsies(input_array)
# 	result_array = [[], []]
	
# 	(input_array.length / 2).times do
# 		result_array[-1].prepend(input_array.pop)
# 	end

# 	input_array.length.times do 
# 		result_array[0].append(input_array.shift)
# 	end

# 	result_array
# end

def halvsies(array)
	middle = (array.size / 2.0).ceil
	first_half = array.slice(0, middle)
	second_half = array.slice(middle, (array.size - middle))
	[first_half, second_half]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]