# insert_numbers.rb

numbers = []

loop do
  puts 'Enter a number'
  input = gets.chomp.to_i
  numbers << input
  break if numbers.size == 5
end

puts numbers
