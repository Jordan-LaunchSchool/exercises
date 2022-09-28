=begin
  - write a method that takes an array of integers
  - muliply all the numbers together, divide the result by the number of entries in the array
  - print the result rounded to 3 decimal places.

  - define the method that takes an array
  - create  sum of multplication variable equal to one
  - iterate over the array
    - multiply the current iteration with the sum variable, save the result to the variable
  
  - divide the multiplication sum variable by the length of the array
  - print this result rounded to 3 decimal places
=end

def show_multiplicative_average(input_array)

  multiplication_of_array_elements = 1.to_f

  input_array.each do |element|
    multiplication_of_array_elements *= element
  end

  result = multiplication_of_array_elements / input_array.length

  puts "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17])