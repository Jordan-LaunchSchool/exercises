=begin
  - write a method that returns a list of all sunstrings that are palindromic
     - PALINDROMIC: each substring must consist of the same sequence of characters forwards
     as it is backwards
  - the return value should be arranged in the same sequence as the substrings appear in the string
  - duplicates should be included multiple times



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


def palindromes(input_string)
  result_array = []
  substrings(input_string).each do |sub_string|
    if sub_string == sub_string.reverse && sub_string.size > 1
      result_array << sub_string
    end
  end
  result_array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]