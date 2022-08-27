
=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a program that takes 6 number from the user
	- the program has to then describe if the 6th number appears amongst the first 5 numbers
  
  Input: six integers

  Output: an array of the first 5 integers

=> EXAMPLES <=


=> DATA STRUCTURES <=


=> ALGORITHM <=
	- define a method called check number, that take 2 arguments, an array and an integer
		- check if the integer is contained within the array, if so return true else false

	- creat a blank array
	- take 5 numbers from the user and save them to an array
	- take a 6th number from the user and save it the a variable
	- run the check number method
		- if true, print the result to the terminal
		- else print the false result to the terminal.


=> CODE <=

=end


first_five_array = []
puts "Enter the 1st number:"
first_five_array << gets.chomp.to_i
puts "Enter the 2nd number:"
first_five_array << gets.chomp.to_i
puts "Enter the 3rd number:"
first_five_array << gets.chomp.to_i
puts "Enter the 4th number:"
first_five_array << gets.chomp.to_i
puts "Enter the 5th number:"
first_five_array << gets.chomp.to_i
puts "Enter the 6th number:"
sixth_number = gets.chomp.to_i

if first_five_array.include?(sixth_number)
	puts "The number #{sixth_number} does appear in #{first_five_array}."
else 
	puts "The number #{sixth_number} does not appear in #{first_five_array}."
end



