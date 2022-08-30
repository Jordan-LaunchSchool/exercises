# what_century.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
	- write a method that takes a year as an input
	- return the value of century number include appropriate suffix
  
  Input: integer

  Output: string

  Rules:
    Explicit:



    Implicit:
			- numbers ending in 1 must include 'st'
			- numbers ending in 2 must include 'nd'
			- numbers ending in 3 must include 'rd'
			- all other numbers must end in 'th'

=> EXAMPLES <=
	century(2000) == '20th'
	century(2001) == '21st'
	century(1965) == '20th'
	century(256) == '3rd'
	century(5) == '1st'
	century(10103) == '102nd'
	century(1052) == '11th'
	century(1127) == '12th'
	century(11201) == '113th'

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- write a method that takes a year/integer as an argument
	- create century variable equal to year input, divided by 100 and + 1
	- save the century as a string to a new variable
	- create a new suffix variable
		- case the last character of the new string variable
			- if the last character is equal to the string '1', save 'st' to the suffix variable
			- if the last character is equal to the string '2', save 'nd' to the suffix variable
			- ...
	- return the century and suffix


=> CODE <=

=end

def century(year)
	century = year.to_s[-2, 2] == '00' ? century = (year / 100) : century = (year / 100) + 1

	century_string = century.to_s
	case century_string[-1]
	when '1'
		suffix = 'st'
	when '2'
		suffix = 'nd'
	when '3'
		suffix = 'rd'
	else
		suffix = 'th'
	end

	case century_string[-2, 2] 
	when '11'
		suffix = 'th'
	when '12'
		suffix = 'th'
	when '13'
		suffix = 'th'
	end

	century.to_s + suffix
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
