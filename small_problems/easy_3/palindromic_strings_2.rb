=begin
	- downcase the string
	- create an empty results array
	- iterate over each character
		- if the character is included in alphanumerical, add it to results array.
	- join the results array, check it for palindrome, return result
=end

ALPHANUMERICAL = Array('a'..'z') + Array.new(10) {|n| n.to_s}

def real_palindrome?(string)
	alphanumerical_only = []
	string.downcase.each_char do |char|
		alphanumerical_only << char if ALPHANUMERICAL.include?(char)
	end

	alphanumerical_only == alphanumerical_only.reverse	
end






p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

