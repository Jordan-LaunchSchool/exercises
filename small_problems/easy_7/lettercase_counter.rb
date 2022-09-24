=begin
  - write a method that takes a string
  - return a hash that contains three entries:
    - one representing the number of characters in the string that are lowercase letters
    - one the number of characters that are uppercase letters
    - one that are neither


  - create a lower case alphabet array
  - create an upper case alphabet array

  - write a method that takes a string
    - create a hash with the values defaulted to zero
    - iterate over each character of the string
      - if the current character is included in the lower case array, 
        add a key pair value of lowercase plus the value of 1
      - if the current character included in the uppercase array
        add a key pair value of uppercase plus 1
      - otherwise, add 1 to the neither key of the hash

    return the hash

=end

LOWER_CASE_ALPHABET = Array('a'..'z')
UPPER_CASE_ALPHABET = Array('A'..'Z')

def letter_case_count(input_string)
  result_hash = {lowercase: 0, uppercase: 0, neither: 0}
  
  input_string.each_char do |char|
    if LOWER_CASE_ALPHABET.include?(char)
      result_hash[:lowercase] += 1
    elsif UPPER_CASE_ALPHABET.include?(char)
      result_hash[:uppercase] += 1
    else
      result_hash[:neither] += 1
    end
  end

  result_hash
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }