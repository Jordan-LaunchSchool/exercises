=begin
	- write a method that takes an integer as an argument
	- have the method return the index of the first number that has the same amount of digits as
	the given argument
	- the first fibonaccia number has an index of 1

	- define a method that takes an integer
	the integer is a representation of the amount of digits that first appears in the sequence
	- start a counter at equal to the input integer
	- create a result array containg the number 1

	- start calculating a fibonacci number
		- create a for loop,
			- break the loop if the last elements digit length (converted to string) is equal to the input integer
			- create a result array containg the number 1
			- plus the first element with the next element (begin at 1), and push the result to the array

	-	return the number in the index that this occurs
		- return the number of elements in the result array
	
=end

def find_fibonacci_index_by_length(fib_digits)
	fibonacci = [1, 1]
	counter = 0
	loop do
		fibonacci << fibonacci[counter] + fibonacci[-1]
		counter += 1
		break if fibonacci[-1].to_s.length == fib_digits
	end

	counter + 2
end




p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

# [1, 1, 2, 3, 5, 8, 13, 21]