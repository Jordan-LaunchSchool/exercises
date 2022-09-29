=begin
  - write a method that takes a grocery list (nested array)
  - conver it into an array of the correct number of each fruit

  - define method that takes an array
  - create a result array, empty
  - iterate over each nested array
  - for the second index of the each nested array times
    - add the first element(fruit) to the result array

  - return the result array

=end


# def buy_fruit(shopping_list)
#   result_array = []

#   shopping_list.each do |nested_array|
#     nested_array[-1].times do
#       result_array << nested_array[0]
#     end
#   end
#   result_array
# end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end


p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]