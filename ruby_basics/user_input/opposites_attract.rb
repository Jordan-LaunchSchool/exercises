# opposites_attract.rb

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# input_one = nil
# input_two = nil

# loop do
#   puts ">> Please enter a positive or negative integer: "
#   input_one = gets.chomp

#   puts ">> Please enter a positive or negative integer: "
#   input_two = gets.chomp

#   if input_one.to_i < 0 && input_two.to_i < 0
#     puts "Sorry. One integer must be positive, one must be negative."
#   elsif
#     input_one.to_i > 0 && input_two.to_i > 0
#     puts "Sorry. One integer must be positive, one must be negative."
#   elsif valid_number?(input_one) && valid_number?(input_two)
#     break
#   else
#     puts "Invalid input. Only non-zero integers allowed."
#   end
# end

# puts "#{input_one} + #{input_two} = #{input_one.to_i + input_two.to_i}"

input_one = nil
input_two = nil


def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts ">> Please enter a positive or negative integer:"
    input = gets.chomp
    return input.to_i if valid_number?(input)
    puts "Invalid input. Only non-zero integers allowed."
  end
end

loop do
  input_one = read_number
  input_two = read_number
  
  break if input_one * input_two < 0 
  puts "Sorry. One integer must be positive, one must be negative."
end

puts "#{input_one} + #{input_two} = #{input_one.to_i + input_two.to_i}"