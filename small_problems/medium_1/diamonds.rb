=begin
  - write a method that takes an integer, n
  - have the method display a 4 pointed diam in a n x n grid
  - n is an odd integer that is supplied as an argument
  - the n integer will always be odd

  - ?? iterate over array, if element odd, add stars times current element, maybe save element to a row variable.

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

=end


def diamond(input_integer)
  rows = Array(1..input_integer)
  rows.delete_if { |number| number.even?}
  white_space = (rows.size - 1)
  rows.each_with_index do |stars, index|
    puts (" " * white_space) + ('*' * rows[index])
    white_space -= 1
  end

  white_space = 0
  rows.reverse!.shift
  rows.each_with_index do |stars, index|
    white_space += 1
    puts (" " * white_space) + ('*' * rows[index])
  end

end

diamond(11)