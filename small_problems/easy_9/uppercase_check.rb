=begin
   - write a method that takes a string
   - have the method return true if all of the alpha characters inside the string are uppercase.
    - otherwise return false

  - create lower case alphabet array
  - define a method that takes a string
  - iterate over each character of the string,
    - if the current iteration is included in the lowercase alphabet string
      - return false
    - otherwise return true

  
=end

LOWER_CASE_ALPHA = Array('a'..'z')

def uppercase?(string)
  string.each_char do |char|
    return false if LOWER_CASE_ALPHA.include?(char)
  end
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true