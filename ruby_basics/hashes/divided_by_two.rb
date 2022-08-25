# divided_by_two.rb

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map { |key, num| num / 2 }

p half_numbers