
=begin
 - write a method that takes a string
 - have the method return the value of the original string but with all of the 
 consecutive duplicates removed

	- define a method that takes a string
		- create an empty result string
		-	iterate over the input string, add the current iteration of the input to 
		the result string unless it is the same as the last character of the result string
=end

def crunch(input_string)
	output_string = ''
	input_string.each_char do |char|
		output_string << char unless output_string[-1] == char
	end
	output_string
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''