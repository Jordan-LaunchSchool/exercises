# string_assignment.rb

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# Both variables will be 'BOB' becuase .upcase! is mutating the original object that
# both variables are pointing to.