# username_password.rb



loop do
  puts "Please enter your username: "
  username_input = gets.chomp

  puts "Please enter your password: "
  password_input = gets.chomp

  break if password_input == 'SecreT' && username_input == 'admin'
  puts "Authorisation failed!"
end

puts "Welcome!"