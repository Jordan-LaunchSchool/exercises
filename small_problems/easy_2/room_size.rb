
=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a program that asks the user for length and width of a room in metres
	- display the room in both square meters and feet

  Input: 2 integers, width and length in metres

  Output: 2 floats, one in square meters and the other in square feet



=> EXAMPLES <=
	Enter the length of the room in meters:
	10
	Enter the width of the room in meters:
	7
	The area of the room is 70.0 square meters (753.47 square feet).

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- ask the user for the length in meters
		- save the input to variable
	- ask the user for the widt in meters
		- save the input to variable
	- create a variable square meters that is equal to length times width
	- create a variable square feet that is equal to square meters times 10.764
	- return the result in a string

=> CODE <=

=end
SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = length * width
square_feet = square_meters * SQMETERS_TO_SQFEET

puts "The are of the is #{square_meters} square meters (#{format('%.2f', square_feet)} square feet)."