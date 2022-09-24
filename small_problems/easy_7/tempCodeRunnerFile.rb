
def interleave(array_1, array_2)
  result = []

  array_1.each_with_index do |element, index|
    result << element
    result << array_2[index]
  end

  result
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']