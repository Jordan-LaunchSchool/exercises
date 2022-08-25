# password.rb

loop do
  puts "Please enter your password: "
  password_input = gets.chomp

  break if password_input == 'SecreT'
  puts "Invalid Password!"
end

puts "Welcome!"