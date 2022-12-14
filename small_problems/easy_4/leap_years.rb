# leap_years.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that takes a year as an argument
	- if the year is a leap year, return true
	- otherwise return false

  Input: integer, a year

  Output: boolean

  Rules:
    Explicit:
		- if the year is not divisble by 100 and is divisible by 4
			it is a leap year

    Implicit:

=> EXAMPLES <=
	leap_year?(2016) == true
	leap_year?(2015) == false
	leap_year?(2100) == false
	leap_year?(2400) == true
	leap_year?(240000) == true
	leap_year?(240001) == false
	leap_year?(2000) == true
	leap_year?(1900) == false
	leap_year?(1752) == true
	leap_year?(1700) == false
	leap_year?(1) == false
	leap_year?(100) == false
	leap_year?(400) == true

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- define a method that take an integer
	- if the integer is not divisble by 100 and is divisible by 4
		return true
	- else return false

=> CODE <=

=end

def leap_year?(year)
	if year % 400 == 0
		true
	elsif year % 100 == 0
		false
	else
		year % 4 == 0
	end
end


# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == false
# p leap_year?(1) == false
# p leap_year?(100) == false
# p leap_year?(400) == true

p leap_year?(1700)

