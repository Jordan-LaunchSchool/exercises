#say_hello.rb

# say_hello = 1

# while say_hello < 6
#   puts 'Hello!'
#   say_hello += 1
# end

say_hello = true
counter = 0

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter > 5
end
