
=begin
  - write a method that takes a string
  - have the method return the second last word in the string

  - define a method that takes a string
  - split the string
  - return the second last element

=end

def penultimate(input_string)
  input_string.split[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'