=begin
  - write a method that takes a string
  - have the string return all substrings of a string
  
  
=end

def leading_substrings(input_string, start_index)
  result_array = []

  input_string.chars.each_index do |index|
    result_array << input_string[start_index..index] unless input_string[start_index..index] == ''
  end
  result_array
end

def substrings(input_string)
  result_array = []
  start_index = 0
  input_string.size.times do 
    result_array << leading_substrings(input_string, start_index)
    start_index += 1
  end
  result_array.flatten
end



p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]