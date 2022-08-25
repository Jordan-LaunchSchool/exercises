# divisible_by_3.rb

numbers = [5, 9, 21, 26, 39]

divisible_by_3 = numbers.select do |n|
                  n % 3 == 0
                end

p divisible_by_3