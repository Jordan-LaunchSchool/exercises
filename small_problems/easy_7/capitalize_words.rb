=begin
  - write a method that takes a string
  - have the argument return a new string that returns the original value with the
  first character of every word capitized and all others lowercase.

  - define a method that takes a string
  - create an empty result string 
  - split the string at the space
    - iterate over each element
      - add the capitalized version of each element to the result string


=end

def word_cap(string)
  result = []
  string.split.each do |word|
    result << word.capitalize
  end

  result.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'