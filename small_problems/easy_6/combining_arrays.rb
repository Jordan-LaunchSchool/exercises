=begin
	- write a method that takes two arrays as argument
	- have the method return an array that contains all of the values from both arguments but without
	any duplicates in the original array

	- define the method
		- join both arrays and have this saved to a result array
		- on the result array run the uniq method and return the result

=end


# def merge(array_1, array_2)
# 	result_array = array_1 + array_2
# 	result_array.uniq
# end

def merge(array_1, array_2)
	array_1 | array_2
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]