# tip_calculator.rb

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percrantage?"
tip = gets.chomp.to_f / 100

puts "The tip is $#{format('%.2f', tip * bill)}"
puts "The total is $#{format('%.2f', (tip * bill) + bill)}"
