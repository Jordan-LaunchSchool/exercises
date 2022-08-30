# multiples_three_and_five.rb


=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a method that takes an integer as an argument
	- the method is to compute all multiples of 3 and 5
	upto the input integer
	- the method is to return the sum of the all the multiples.

  Input: integer

  Output: integer

  Rules:
    Explicit:



    Implicit:

=> EXAMPLES <=


=> DATA STRUCTURES <=
	- input integer
	- array of multiples
	- output total integer sum

=> ALGORITHM <=
	- define a method that takes an integer
	- create an empty results array
	- create an array of intgers upto the input integer
		- iterate over the array, 
			- if the current iteration is a multiple of 3 or 5 add the number to the results array
	
	- return the sum of the results array

=> CODE <=

=end

def multisum(int)
	results = []
	0.upto(int).each do |number|
		if number % 3 == 0 || number % 5 == 0
			results << number
		end
	end

	results.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168