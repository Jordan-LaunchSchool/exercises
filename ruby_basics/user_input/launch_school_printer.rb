# launch_school_printer.rb

loop do
  puts "How many lines do you want? Enter a number >= 3:"
  number = gets.chomp.to_i

  if number >= 3
    number.times do
      puts "Launch School is the best!"
    end
    break
  else
    puts "Thats not enough lines."
  end  
end
