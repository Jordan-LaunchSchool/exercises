=begin
	- write a method that takes a float that represents an angle between 0 and 360.
	- have the method return a string that represents the angle in degrees minutes and seconds. 

	- A degree has 60 minutes and a minute has 60 seconds
	- Use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, 
	and a double quote (") to represent seconds.

	ALGO
		- define a method that takes a float
			- divide the input into degress and decimals
			- 
=end

def dms(float)
	degrees, decimal = float.divmod(1)
	minutes_decimal = decimal * 60
	minutes, seconds_decimal = minutes_decimal.divmod(1)
	seconds = seconds_decimal * 60
	seconds = seconds.to_i

	format(%(#{degrees}°%02d'%02d"), minutes, seconds)
end

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")