# stringy_strings.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a method that takes a positive integer
  - have the string return a string of alternating 1's and 0's always starting with one  
  - the length of the string is to match the given integer

  Input: 
  - integer

  Output: 
  - string of integers

=> EXAMPLES <=
  puts stringy(6) == '101010'
  puts stringy(9) == '101010101'
  puts stringy(4) == '1010'
  puts stringy(7) == '1010101'

=> DATA STRUCTURES <=
  - positive integer
  - string for the output

=> ALGORITHM <=
  - define a method that takes a positive integer
  - assign an empty string to the variable named 'result'
  - create a loop that counts for the input integer amount of times
    - within the loop, if the current count is odd, add a '1' to 'result' else add a '0'
  return the result.

=> CODE <=

=end

def stringy(int, option=1)
  result = ''

  if option == 1
    int.times do |counter|
      counter.even? ? result << '1' : result << '0'
    end
  else
    int.times do |counter|
      counter.even? ? result << '0' : result << '1'
    end
  end
  
  result
end


puts stringy(6, 0)
