# arithmetic_integer.rb

def prompt(message)
	puts "==> " + message
end

prompt("Enter the first number:")
first_number = gets.chomp.to_i

prompt("Enter the secound number")
secound_number = gets.chomp.to_i

prompt("#{first_number} + #{secound_number} = #{first_number + secound_number}")
prompt("#{first_number} - #{secound_number} = #{first_number - secound_number}")
prompt("#{first_number} * #{secound_number} = #{first_number * secound_number}")
prompt("#{first_number} / #{secound_number} = #{first_number / secound_number}")
prompt("#{first_number} % #{secound_number} = #{first_number % secound_number}")
prompt("#{first_number} ** #{secound_number} = #{first_number ** secound_number}")

