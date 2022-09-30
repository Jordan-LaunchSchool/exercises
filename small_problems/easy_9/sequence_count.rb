=begin
  - write a method that takes two integers
  - the first integer is a count
  - the second integer is the first number of the sequence that the method will create
  - the method is to return an array that contains the same number of elements as the count
  - each value of the of each element will be multiples of the starting number e.g the second argument number

  - define a method that takes two integers, a count and multiplier
  - create an empty result array
  - create a seperate sum variable starting at 0
  - begin a loop for the value of the counter argument
    - plus the multiplier number by the sum variable and add the result to result array
  
  - return the result array
=end

def sequence(count, multiplier)
  result_array = []
  sum = 0

  count.times do 
    result_array << (sum += multiplier)
  end

  result_array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []