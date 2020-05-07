musicians = [
  'David Gilmour',
  'Roger Waters',
  'Richard Wright',
  'Nick Mason'
]

# iterators: methods for collections

# each: return the collection it was called upon (musicians)
# each: won't modify any data
# assigning to another array: pretty useless
array_each = musicians.each do |musician|
	musician.upcase
end
puts "--> each"
p musicians
p array_each
puts

# map: return the collection with changed element done in block
# map: won't modify original collection, but saves modified elements in new array
array_map = musicians.map do |musician|
	musician.upcase
end
puts "--> map"
p musicians
p array_map
puts

# each_with_index: return the collection it was called upon
puts "--> each_with_index"
array_each_with_index = musicians.each_with_index do |musician, index|
	# we CAN modify the array ourselves, e.g.:
	# musicians[index] = musician.upcase

	puts "#{index + 1}: #{musician}"
end
p musicians
p array_each_with_index
puts

# count: returns the count for which the condition is true
array_with_r_count = musicians.count do |musician| 
	# condition
	musician.start_with?('R')
end
puts "--> count"
p array_with_r_count
puts

musicians.count # iterator: we can pass a block
musicians.size
musicians.length

# select: returns the selections and saves it in a new array
puts "--> select"
array_musicians = musicians.select do |musician|
	# condition
	puts "#{musician} (#{musician.start_with?('R')})"
	musician.start_with?('R')
end
p array_musicians
