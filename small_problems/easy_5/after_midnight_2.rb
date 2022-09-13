=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a method that takes a time as a string and converts it into minutes after midnight

  Input: string, representing the time

  Output: integer, representing minutes after midnight

  Rules:
    Explicit:



    Implicit:
			- twenty four hundred is to represented as 0

=> EXAMPLES <=
	after_midnight('00:00') == 0
	after_midnight('12:34') == 754
	after_midnight('24:00') == 0

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- define a method that takes a string representing the time
		- if the first two digits == 24, hours == 0
		- extract the first two digits and convert them into hours as integers
		- extract the second two digits and convert them into clock minutes as integers
		- convert the hours into minutes, multiplying by 60 and add this to the clock minutes, 
		save the result to a total minutes variable



=> CODE <=

=end
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 60 * 24

def after_midnight(input_time)
	hours = input_time[0, 2].to_i
	clock_minutes = input_time[-2, 2].to_i

	(hours * MINUTES_PER_HOUR + clock_minutes) % MINUTES_PER_DAY
end

def before_midnight(input_time)
	total_minutes = (MINUTES_PER_DAY - after_midnight(input_time))
	if total_minutes == MINUTES_PER_DAY
		total_minutes = 0  
	else
		total_minutes
	end
end

# def after_midnight(time_str)
# 	hours, minutes = time_str.split(":").map(&:to_i)
# 	(hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end

# def before_midnight(time_str)
# 	delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
# 	delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
# 	delta_minutes
# end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0