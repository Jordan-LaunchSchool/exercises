
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

string = "hello word"
p string.object_id
p string.split.reverse!.object_id