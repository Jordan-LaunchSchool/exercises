
=begin
  - write a method that takes an integer
  - have the integer return an array of all integers in sequence between 1 and the argument

=end

def sequence(int)
  Array(1..int)

end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(-1)