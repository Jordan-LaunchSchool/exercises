# short_long_short.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that takes 2 strings
	- determine the longest of the two strings
	- return the result of concaternating the shorter string, the longer string
	 and the shorter string again

  Input: string

  Output: string


=> EXAMPLES <=
	short_long_short('abc', 'defgh') == "abcdefghabc"
	short_long_short('abcde', 'fgh') == "fghabcdefgh"
	short_long_short('', 'xyz') == "xyz"

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- define a method that takes two strings as arguments
	- determine the longest of the two strings
		- if the arg1 is longer than arg 2, save arg1 to long string and arg2 to short string
			- else vise versa
		- save the longer string to variable long string
		- save the shorter string to short string variable
		- return concat strings of short long short


=> CODE <=

=end

def short_long_short(string1, string2)
	if string1.length > string2.length
		long_string = string1
		short_string = string2
	else
		long_string = string2
		short_string = string1
	end

	short_string + long_string + short_string
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"