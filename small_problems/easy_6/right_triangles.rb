=begin
 - write a method that takes a positive integer as an argument
 - have the method display a right triangle whose sides each have the integers
 number of stars. 

	- define a method that takes an argument
	- create a star counter variable equal to the input argument
	- create a space counter variable starting at 0
	- for input argument times
	- puts space counter spaces and star counter amount of stars
	- add 1 to the space counter variable
	- subtract 1 from the star counter variable


=end

def triangle(star_counter)
	spaces = star_counter
	stars = 0
	star_counter.times do
		puts "#{' ' * spaces + '*' * stars}"
		stars += 1
		spaces -= 1
	end
end

triangle(9)



