=begin
  - write a method that takes an integer
  - if the integer is positive, return the negative of  that number
  - if the number is 0 or negative, return the original number

    - define the method
    - if the number is less than zero
      - return the negative of that number
    - otherwise, return the original number
=end


def negative(input_integer)
  if input_integer > 0
    -input_integer
  else
    input_integer
  end
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0  