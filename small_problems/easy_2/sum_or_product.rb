# sum_or_product.rb
=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a program that asks user for an integer
	- ask the user to determine the sum or product of between 1 and the entered integer

  Input: integer

  Output: integer, either so or product of


=> EXAMPLES <=
	>> Please enter an integer greater than 0:
	5
	>> Enter 's' to compute the sum, 'p' to compute the product.
	s
	The sum of the integers between 1 and 5 is 15.


	>> Please enter an integer greater than 0:
	6
	>> Enter 's' to compute the sum, 'p' to compute the product.
	p
	The product of the integers between 1 and 6 is 720.


=> DATA STRUCTURES <=


=> ALGORITHM <=
	- SUM METHOD define a method that calculate the sum of integers between 1 and the user input integer
		- create an array from 1 to the user input integer
		- return the sum of the array
	
	- PRODUCT METHOD define a method that takes the users input.
		- create an array from 1 to the user input integer
		- create a variable named product equal to 1
		- iterate over the array, reassigning the product variable to the result multiplying each element 
			with the value of product
		- return product
			
	- ask the user to input an integer greater than 0
	- ask the user to input s for sum or p for product
	- if user inputs s, call sum method, else run product method
	- print the result


=> CODE <=

=end

def compute_sum(int)
	# sum = Array(1..int)
	# sum.sum
	(1..int).inject(:+)
end

def compute_product(int)
	# product = 1
	# Array(1..int).each do |number|
	# 	product *= number
	# end
	# product
	(1..int).inject(:*)
end

user_integer = ''
loop do
	puts ">> Please enter an integer greater than 0: "
	user_integer = gets.chomp
	if user_integer.to_i.to_s == user_integer
		user_integer = user_integer.to_i
		break
	end

	puts "That input is not valid"
end

loop do
	puts ">> Enter 's' to computer the sum, or 'p' to compute the product."
	computation = gets.chomp.downcase

	if computation == 's'
		puts "The sum of the intgers between 1 and #{user_integer} is #{compute_sum(user_integer)}."
		break
	elsif computation == 'p'
		puts "The product of the intgers between 1 and #{user_integer} is #{compute_product(user_integer)}."
		break
	else
		puts "Oops. Unknown operation."
	end
end

