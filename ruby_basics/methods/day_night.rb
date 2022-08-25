# day_night.rb

def time_of_day(x)
  x ? "It's daytime!" : "It's nighttime!"
end

daylight = [true, false].sample

puts time_of_day(daylight)