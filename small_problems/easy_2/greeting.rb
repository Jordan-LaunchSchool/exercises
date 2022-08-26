# greeting.rb

=begin
	- ask for the users name
	- save name to variable
	- if the last character of the name is '!'
		- print uppercase string
	- else, print normal greeting

=end

puts "What is your name?"
name = gets.chomp!

if name.end_with?('!')
	puts "HELLO #{name.chop!.upcase}. WHY ARE WE SCREAMING?"
else
	puts "Hello #{name.capitalize}."
end