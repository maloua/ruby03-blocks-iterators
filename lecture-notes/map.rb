musicians = [
  'David Gilmour',
  'Roger Waters',
  'Richard Wright',
  'Nick Mason'
]

# map(array) --> our own custom method
# array.map --> internal ruby method

### DIY MAP METHOD
def map(array) # yield is available, if a block is passed as an argument
	puts '1. starting with the map method'
	new_array = []

	# element can have any name you want
	for element in array
		puts '2. inside the for loop with element ' + element

		# let the block change the element
		element_with_changes = yield(element)

		# add the changed element to the array
		new_array << element_with_changes
	end

	puts '4. almost leaving the map method'

	# return the new array with the modified elements
	new_array
end

upcased_musicians_1 = map(musicians) do |musician|
	puts '3. im inside the block'
	musician.upcase
end
p upcased_musicians_1


### BUILT-IN RUBY METHOD
upcased_musicians_2 = musicians.map do |musician|
	musician.upcase
end
p upcased_musicians_2