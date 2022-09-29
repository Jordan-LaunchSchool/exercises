=begin 
  - create an empty result hash
  - iterate over the array 
    - if the current word key does exist, push the current iteration to that key's value (array)
    - otherwise, create a key, and have the equal to the current iteration as an array
  print the result hashes values
=end

words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

result = {}

words.each do |word|
  if result.has_key?(word.chars.sort.join)
    result[word.chars.sort.join] << word
  else
    result[word.chars.sort.join] = [word]
  end
end

result.each_value do |value_array|
  p '-------'
  p value_array
end
