#get_the_sum.rb

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  if answer == 4
    puts "Thats Correct!"
    break
  end
  puts "Wrong answer. Try again!"
end