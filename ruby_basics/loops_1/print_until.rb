#print_until.rb

numbers = [7, 9, 13, 25, 18]
counter = 0

until counter == numbers.length
  puts numbers[counter]
  counter += 1
end
