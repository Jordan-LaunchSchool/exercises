=begin
 - write a method that takes an argument, an integer, that represents a total number of lights
 - have the method return an array that identifies which lights are on

 - the first round all switches are toggled to on
 - the second pass, every second switch is toggled
 - the third pass, every third switch is toggled
 - the 4th pass, every fourth switch is toggled etc...
 - the number of passes is equal to the amount of switches/lights

 - write a method that takes an integer (number of switches)
 - create an empty result array
 - create a counter equal to 1
 - create a switches array from 1 to the input integer



=end

def lights_on(number_of_switches)
  switches_array = []
  number_of_switches.times do
    switches_array << true
  end
  
  round = 2

  switches_array.each do |element|
    switches_array.each_with_index do |switch, index|
      if (index + 1) % round == 0 
        switches_array[index] = !switch
      end
    end 
    round += 1
  end

  result_array = []
  switches_array.each_with_index do |switch, index|
    result_array << (index + 1) if switch
  end

  result_array
end


lights_on(5)