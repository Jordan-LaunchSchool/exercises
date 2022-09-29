=begin
  - write a method that takes a first name, a space, and a last name (a string)
  - have the method return the last name, a comma, and the first name

  - define a method that takes a string
    - split the string
    - save the first name as the first element
    - save the second name as the second element
    - return the last name, a comma, first name
=end

def swap_name(full_name)
  first_name = full_name.split[0]
  last_name = full_name.split[-1]
  "#{last_name}, #{first_name}"
end

p swap_name('Joe Roberts') == 'Roberts, Joe'