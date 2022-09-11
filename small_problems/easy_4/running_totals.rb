
=begin
=> SCRATCH PAD <=
	- inject method?
	- transforming the array - use map
	- 

=> PROBLEM <=
	- write a method that takes an array of numbers
	- have the array return the same number of elements, with each element 
	a running total from the original array.
	
	Input: 
		- an array

  Output: 
	 	- array

  Rules:
    Explicit:
			- out put array with same number of elements as the input
			- each preceding element is to be the sum of the previous element prior plus itself



    Implicit:
			- 

=> EXAMPLES <=
	running_total([2, 5, 13]) == [2, 7, 20]
	running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
	running_total([3]) == [3]
	running_total([]) == []

=> DATA STRUCTURES <=


=> ALGORITHM <=
 - define a method that takes an array
	- create a sum variable equal to zero
	- iterate over the array, transforming each element into the sum of 
	itself plus the preceding number. (this first element will be plus zero)
	- return the transformed array

=> CODE <=

=end

def running_total(array)
	sum = 0
	array.map do |element|
		sum += element
	end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []