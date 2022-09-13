=begin
	- write a method that takes a string
	- have the method print the string within a box

	- define a method that takes a string
		**first create the box**
		- print a a corner, two dashes and a corner
		-	print a wall, a space and a wall (3x)
		- print the bottom corners and walls
=end

def print_in_box(string)


	puts "+-#{'-' * string.length}-+"
	puts "|#{' ' * string.length}  |"
	puts "| #{string} |"
	puts "|#{' ' * string.length}  |"
	puts "+-#{'-' * string.length}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')