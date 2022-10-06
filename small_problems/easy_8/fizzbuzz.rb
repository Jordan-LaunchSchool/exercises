=begin
  - write a method that takes two arguments
  - first: the starting number
  - second: the ending number

  - have the method print out all numbers between the two numbers
  - if a number is divisible by 3 print, Fizz
  - if a number is divisble by 5, print Buzz
  - if a number is divisible by 3 and 5 print fizzbuzz

  - define a method called divisible by 3
    - return true if the number is divisble by 3
    - otherwise false
  
  - define a method called divisible by 5
    - return true if the number is divisible by 5
    - otherwise return false

  - define a method called fizzbuzz that takes two integers
     - create a numbers array from the first input integer to the second integer
     - iterate over the numbers array
     **USE CASE**
      - if the current number is divisible by 3 & 5,
        - print fizzbuzz
      - if the current number is divisble by 5
        - print buzz
      - if the number is divisble by 3
        - print fizz
      - otherwise, print the number

=end

def divisible_by_3?(integer)
  integer % 3 == 0
end

def divisible_by_5?(integer)
  integer % 5 == 0
end

def fizzbuzz(start_integer, end_integer)
  
  result = Array(start_integer..end_integer).map do |element|
    case
    when divisible_by_3?(element) && divisible_by_5?(element)
      "FizzBuzz"
    when divisible_by_5?(element)
      "Buzz"
    when divisible_by_3?(element)
      "Fizz"
    else
      element
    end
  end
  puts result.join(', ')
end



fizzbuzz(1, 15)