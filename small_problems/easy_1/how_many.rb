# how_many.rb

=begin
=> SCRATCH PAD <=

=> PROBLEM <=
  - write a method
  - count number of occurences of each element



  Input: array

  Output: Hash

  Rules:
    Explicit:
      - count the number of occurences


    Implicit:
     - output is to be a hash

=> EXAMPLES <=
vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

car => 4
truck => 3
SUV => 1
motorcycle => 2

=> DATA STRUCTURES <=
Array, iterated over to make keys to the hash
out put is to be a hash

=> ALGORITHM <=
- define the method that takes an array as an argument
- create a new vehicle counter hash
- iterate over the array creating symbols for the vehicle counter hash
- iterate over the array and count the number of occurences and add them to the hash
- return the hash

=> CODE <=

=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# def count_occurrences(array)
#   vehicle_counter = Hash.new
#   array.each do |vehicle|
#     vehicle_counter[vehicle] = 0
#   end

#   array.each do |vehicle|
#     if vehicle_counter.include?(vehicle)
#       vehicle_counter[vehicle] += 1
#     end
#   end

#   vehicle_counter.each do |vehicle, number|
#     puts "#{vehicle} => #{number}"
#   end
# end

def count_occurrences(array)
  occurences = Hash.new

  array.uniq.each do |element|
    occurences[element] = array.count(element)
  end

  occurences.each do |vehicle, number|
    puts "#{vehicle} => #{number}"
  end
end

count_occurrences(vehicles)