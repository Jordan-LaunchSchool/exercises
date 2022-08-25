# something_2.rb

# loop do
#   puts "Do you want me to print something? (y/n)"
#   input = gets.chomp.downcase

#   if input == 'y'
#     puts "something"
#     break
#   elsif input == 'n'
#     break
#   end
  
#   puts "Invalid input! Please enter y or n."
# end


input = nil

loop do
  puts "Do you want me to print something? (y/n)"
  input = gets.chomp.downcase
  break if %w(y n).include?(input)
  puts "Thats an invalid input! Please put y or n"
end

puts "something" if input == 'y'