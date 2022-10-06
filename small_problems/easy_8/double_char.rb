=begin
  - write a method that takes a string
  - have the method return a new string where every character is doubled
=end

def repeater(input_string)
  result_string = ''

  input_string.each_char do |char|
    result_string << char * 2
  end

  result_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

