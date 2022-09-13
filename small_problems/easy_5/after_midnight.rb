
=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a method that takes an integer, a number of minutes
	- have the method return a string representing the time for midnight

  Input: 
	- integer, number of minutes

  Output: 
	- a string, representing minutes before or after midnight

  Rules:
    Explicit:
		- There is 1440 minutes in one day
		- The output has to be converted to 2 places.
		- 

    Implicit:

=> EXAMPLES <=
	*Positive examples below 1440 minutes
 time_of_day(0) == "00:00"
 time_of_day(35) == "00:35"
 time_of_day(800) == "13:20"

=> DATA STRUCTURES <=


=> ALGORITHM <=
	- define a method that takes an integer
		- divide the total minutes into hours and minutes saving both to a variable
		- output the time as a string formated to two places. 

=> CODE <=

=end

MINUTES_IN_ONE_HOUR = 60
HOUR_IN_ONE_DAY = 24
MINUTES_IN_ONE_DAY = 60 * 24

def normalise_minutes(total_minutes)
	case total_minutes <=> 0
	when 1	
		until total_minutes < MINUTES_IN_ONE_DAY
			total_minutes = total_minutes - MINUTES_IN_ONE_DAY
		end
	when -1
		until total_minutes > 0
			total_minutes = total_minutes + MINUTES_IN_ONE_DAY
		end
	end
	total_minutes
end


def time_of_day(total_minutes)
	total_minutes = normalise_minutes(total_minutes)

	hours, minutes = total_minutes.divmod(MINUTES_IN_ONE_HOUR)

	"#{format("%02d:%02d", hours, minutes)}"
end


p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"