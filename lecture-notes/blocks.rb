def hello(name) # block: 'invisible' argument called with 'yield'
	puts "starting method 'hello'"

	pretty_name = name.upcase.split("").shuffle.join
	
	# go into the the do ... end block
	yield(pretty_name)

	puts "ending method 'hello'"
end

# method - arg 1: Marta, arg 2: block
hello('Marta') do |pretty_name|
	puts "Hello #{pretty_name}"
end

puts

# method - arg 1: Alejandro, arg 2: block
hello('Alejandro') do |pretty_name|
	puts "Hola #{pretty_name}"
end

# built-in ruby methods
# my_array.join
# my_array.each

# DIY (do it yourself) methods
# join(my_array)
# each(my_array)