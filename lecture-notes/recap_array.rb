### Recap on arrays

# Create
students = ['Caroline', 'David', 'Come', 'David']

puts "Created array:"
p students

### Read
# indexes are 0-based
#       0         1      2        3
# ['Caroline', 'David', 'Come', 'David']
puts "Read the student at index 1: #{students[1]}" # => David
puts 

### Update
# Update one value
students[2] = 'Côme'
puts "Corrected Cômes' name:"
p students[2]
puts 

# Add a new value to the array
students << 'Kasimir'
puts "Adding Kasimir to the mix:"
p students
puts

### Destroy
# Destroy based on value
students.delete('David')
puts "Delete alllll of the Davids:"
p students
puts 

# Destroy based on index
puts "There goes #{students[0]}:"
students.delete_at(0) # deletes 'Caroline'
p students
puts 

# iterate over an array
students.each do |student|
  puts "Hello #{student}! You managed to stay in the array, even after all the updating and deleting. Well done. What a great achievement.\n"
end