# catch_the_number.rb
# array = Array(1..10)

# loop do
#   number = rand(100)
#   puts number
#   break if array.include?(number)
# end

loop do
  number = rand(100)
  puts number
  break if number.between?(1, 10)
end