=begin
   - write a method that takes 2 arguments, an array and a hash
   - the array will contain two or more elements that will contain a persons name
   - the hash will contian two keys, title and occupation and the appropriate values.
   - have the method return a greeting that uses the persons full name, title and occupation


  
  SCRATCH PAD
  To print the elements from the array check out to_s method to see if that works on an array, 
  or some kind of join method or flatten method
  Access the the hash by using the keys
=end

def greetings(input_array, input_hash)
  puts "Hello, #{input_array.join(' ')}! Nice to hash a #{input_hash[:title]} #{input_hash[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })