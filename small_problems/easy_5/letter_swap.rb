=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that takes a string
	-	 have the method return a string where the first and last letters of every word are swapped.	

  Input: String

  Output: String

  Rules:
    Explicit:



    Implicit:

=> EXAMPLES <=
	swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
	swap('Abcde') == 'ebcdA'
	swap('a') == 'a'


=> DATA STRUCTURES <=


=> ALGORITHM <=
	- define a method that takes a string
		- split the string into an array using spaces
		- iterate over the array, transforming each element
			- create a place holder for the first letter
			- create a place holder for the last letter
			- the first letter of the string is to equal the last letter of the string
			- the last letter of the string is to equal the first letter of the string



=> CODE <=

=end

def swap(string)
	result_array = string.split(' ').map do |element|
		first_letter, last_letter = element[0], element[-1]
		element[0], element[-1] = last_letter, first_letter
		element
	end
	result_array.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

