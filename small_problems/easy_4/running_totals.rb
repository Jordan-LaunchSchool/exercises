# running_totals.rb
=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a method that takes an array of numbers
	- return an array with the same amount of elements
	- the returned array must have the running total of the element prior to it

  Input: array

  Output: array

  Rules:
    Explicit:



    Implicit:

=> EXAMPLES <=
	running_total([2, 5, 13]) == [2, 7, 20]
	running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
	running_total([3]) == [3]
	running_total([]) == []

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- write a method that takes an array
	- create a running total variable equal to zero
	- iterate over the array index
		- make the current iteration the sum of itself plus the running total variable
	- return the array

=> CODE <=
					
=end

def running_total(array)
	running_total = 0
	array.map { |element| running_total += element }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []