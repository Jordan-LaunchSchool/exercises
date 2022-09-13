

def cleanup(input_string)
	ALPHABET = Array('a'..'z')
	result_array = []
	input_string.each_char do |char|
		if ALPHABET.include?(char)
			result_array << char
		else
			result_array << ' ' unless result_array.last == ' '
		end
	end
	result_array.join
end


p cleanup("---what's my +*& line?") == ' what s my line '