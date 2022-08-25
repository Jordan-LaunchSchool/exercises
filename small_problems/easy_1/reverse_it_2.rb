# reverse_it_2.rb

# def reverse_words(string)
#   reversed_string = string.split.map do |word|
#                       if word.length >= 5
#                         word.reverse!
#                       else
#                         word
#                       end
#                     end
  
#   reversed_string.join(' ')
# end

def reverse_words(string)
  words = []

  string.split.each do |element|
    element.reverse! if element.length >= 5
    words << element
  end

  words.join(' ')
end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS