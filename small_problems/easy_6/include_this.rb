=begin
	- write a method that takes 2 arguments, an array and an integer
	- have the return true if the integer is included in the array or false if not

	- define a method that takes 2 arguments, an array and an integer (search value)
	- iterate over the array, if the current iteration is equal to the search value
	return true
	- end the iteration
	- return false
=end

# def include?(input_array, search_value)
# 	input_array.each do |element|
# 		return true if element == search_value
# 	end
# 	false
# end

def include?(array, search_value)
	!!array.find_index(search_value)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false