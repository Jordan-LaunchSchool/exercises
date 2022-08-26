# retire.rb

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age woould you like to retire?"
retirement_age = gets.chomp.to_i

work_years = retirement_age - age

puts "It's #{Time.now.year}. You will retire in #{Time.now.year + work_years}."
puts "You only have #{work_years} of work to go!"