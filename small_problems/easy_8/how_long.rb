=begin
   - write a method that takes a string
   - have the method return an array that contains every word from the string appended by a space
   and the word length

   - define a method that takes a string
   - create an empty result array
   - iterate over each element of the input string
    - add the current iteration, a space, and the current iterations length to the result method


  - return the result method

=end

def word_lengths(string)
  result = []
  string.split.each do |word|
    result << word + ' ' + word.length.to_s
  end
  result
end

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
