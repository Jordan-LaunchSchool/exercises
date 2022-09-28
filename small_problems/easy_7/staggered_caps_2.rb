
=begin
  - write a method that takes a string
  - have the method return as string that is staggered case
  -  non-alpha characters should be included in the return value
  - the do not count when toggling the desired case
=end

ALPHABET = Array('a'..'z') + Array('A'..'Z')

def staggered_case(input_string, modifier=false)
  result = ''
  need_upper = true

  input_string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end

    if modifier == true
      need_upper = !need_upper unless !ALPHABET.include?(char)
    else
      need_upper = !need_upper
    end
  end
    
  result
end

p staggered_case('I Love Launch School!', true) == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS', true) == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 nUmBeRs'