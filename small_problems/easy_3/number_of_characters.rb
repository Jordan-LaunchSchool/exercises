# number_of_characters.rb

=begin
	- take input string from the user
	- join the string
		- split the string return an array
		- join the array to remove spaces and return a string
		- string.length
	- return the count result and the original string 

=end

puts "Please write word or multiple words: "
input_text = gets.chomp

puts %(There are #{input_text.delete(' ').length} characters in "#{input_text}".)

