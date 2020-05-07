def acronymize(sentence)
  # Split up the words
  words = sentence.split(' ')

  # Assign the upcased first letters to a new array
  letters = words.map { |word| word[0].upcase } 

  # Join the array to return it as a string
  letters.join
end

def very_short_acronymize(sentence)
  sentence.split(' ').map { |word| word[0].upcase }.join
end

p acronymize('Test Driven Francesco') === 'TDF'

### Three ways of 'copying' an array with changed elements
array = ('a'..'f').to_a

# The Old Way
each_array = []
array.each do |element|
  each_array << element.upcase
end
p each_array

# The New Way
map_array = array.map do |element|
  element.upcase
end
p map_array

# The Short New Way
short_array = array.map { |element| element.upcase }
p short_array






