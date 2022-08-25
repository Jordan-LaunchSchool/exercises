# bonus.rb


=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a method that takes 2 arguments
    - first argument is an integer
    - secound argument is a boolen
  - if the boolean results to true, the method should return half of the integer
  - if the boolean results to false, the method should return 0


  Input: integer, boolean

  Output: integer



=> EXAMPLES <=

  puts calculate_bonus(2800, true) == 1400
  puts calculate_bonus(1000, false) == 0
  puts calculate_bonus(50000, true) == 25000

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- define a method that takes two arguments
	- if the second argument is true
		- return half the amount of the first argument integer
	- else return 0


=> CODE <=

=end

def calculate_bonus(salary, boolean)
	boolean ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000