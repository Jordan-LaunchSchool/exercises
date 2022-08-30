# convert_string_to_number.rb

NUMBERS = {
	'1' => 1,
	'2' => 2,
	'3' => 3,
	'4' => 4,
	'5' => 5,
	'6' => 6,
	'7' => 7,
	'8' => 8,
	'9' => 9,
	'0' => 0,
	'A' => 10,
	'B' => 11,
	'C' => 12,
	'D' => 13,
	'E' => 14,
	'F' => 15
}

def string_to_integer(number_string)
	integer_array = []
	number_string.each_char do |char|
		integer_array << NUMBERS[char.upcase]
	end
	
	value = 0
	integer_array.each do |digit|
		value = value * 10 + digit
	end

	value	
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570


