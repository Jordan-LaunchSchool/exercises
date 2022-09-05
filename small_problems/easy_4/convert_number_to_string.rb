=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a method that takes an integer as an argument
	- have the method return a string of the number

  Input: integer

  Output: string



=> EXAMPLES <=
	integer_to_string(4321) == '4321'
	integer_to_string(0) == '0'
	integer_to_string(5000) == '5000'

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- define a digits array
	- define integer to string method that takes an integer as an argument
		- create an empty string array saved to a variable
		- being a loop, 
			- divide the input number by 10 and save the remainder to a variable, remainder
			- prepend the result of accessing the string array version of the remainder
			- break if once the input number is 0
		- return the result string

=> CODE <=

=end

DIGITS = Array('0'..'10')

def integer_to_string(number)
	result = ''
	loop do
		number, remainder = number.divmod(10)
		result.prepend(DIGITS[remainder])
		break if number == 0
	end
	result
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'