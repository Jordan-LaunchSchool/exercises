=begin
 - create an empty digits hash that is a constant
 - create a method that creates the digits hash
	 - create an array from 0 to 10 as strigns
	 - iterate over the array making the current iteration the key and the index
	 the value of the digits constant hash
	
	- define the signed integer to string method that takes an integer
		- create an empty results array
		- until the input integer == 0
			- divide the integer by 10, saving the remainder
				- access the value from the digits constant that is equivalent to the key of the remainder
				and add this to begining of the results array

		
		- run conditional on the input integer
			- if it is greater than zero, add a '+' to the begining of the results array
			- if it is less than zero, add a '-'

	- join the results array
=end


DIGITS = {}

def create_digits_constant()
	Array('0'..'9').each_with_index do |string, index|
		DIGITS[string] = index
	end
end

def integer_to_string(integer)
	results = []

		loop do
			integer, remainder = integer.divmod(10)
			results.prepend(remainder)
			break if integer == 0
		end
	results.join
end

def signed_integer_to_string(integer)
	case integer <=> 0
	when 1 then '+' + integer_to_string(integer)
	when -1 then '-' + integer_to_string(-integer)
	else
		integer_to_string(integer)
	end
end



create_digits_constant()

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'