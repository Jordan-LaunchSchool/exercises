# string_to_signed_number.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that takes takes a string of numbers
	- the method must be able to determine if the number is to negative or positive
	- have the method return the numbers 

  Input: string of numbers and possibly a leading character

  Output: integer, positive or negative

=> EXAMPLES <=
	string_to_signed_integer('4321') == 4321
	string_to_signed_integer('-570') == -570
	string_to_signed_integer('+100') == 100

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- write a method that iterates over the characters 
		- if the first character is negative, remove the first character
			- iterate over the character and return an integer, minus itself * 2 to return a 
			negative number
		- if the first character is +, remove the first character and proceed with the iteration
			to return a positive integer
		- else
			- iterate over the character to proceed with integer conversion
=> CODE <=

=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

# def string_to_signed_integer(string_number)
# 	int = 0
# 	if string_number[0] != '-'
# 		string_number.delete('+').each_char do |char|
# 			int = int * 10 + DIGITS[char]
# 		end
# 	elsif string_number[0] == '-'
# 		string_number.delete('-').each_char do |char|
# 			int = int * 10 + DIGITS[char]
# 		end
# 		int = int - (int * 2)
# 	end
# 	int		
# end

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
	case string[0]
	when '-' then -string_to_integer(string.delete('-'))
	when '+' then string_to_integer(string.delete('+'))
	else 					string_to_integer(string)
	end
end


p string_to_signed_integer('+100') == 100
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('4321') == 4321